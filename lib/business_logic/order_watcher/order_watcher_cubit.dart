import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/errors.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/order/order.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';
import 'package:test_app/data/repositories/order/i_order_repository.dart';
import 'package:test_app/injection.dart';

part 'order_watcher_state.dart';
part 'order_watcher_cubit.freezed.dart';

@injectable
class OrderWatcherCubit extends Cubit<OrderWatcherState> {
  final IOrderRepository orderRepository;
  OrderWatcherCubit(this.orderRepository) : super(OrderWatcherState.initial());
  StreamSubscription orderWatcherSubscription;

  Future<void> fetchOrders() async {
    final userOption = await getIt<IFirebaseAuthRepository>().getUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    orderWatcherSubscription = orderRepository.fetchOrderData().listen(
      (failureOrFetch) {
        emit(
          failureOrFetch.fold(
            (failure) => OrderWatcherState.loadFailure(failure),
            (orders) {
              if (orders.isEmpty) {
                return OrderWatcherState.empty();
              } else {
                return OrderWatcherState.loadSuccess(
                  orders
                      .where((orderData) =>
                          user.id.getOrCrash() == orderData.userData.userId)
                      .toList(),
                );
              }
            },
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    orderWatcherSubscription.cancel();
    return super.close();
  }
}
