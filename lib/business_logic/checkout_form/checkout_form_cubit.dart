import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/order/order.dart';
import 'package:test_app/data/models/order/value_objects.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/data/repositories/order/i_order_repository.dart';

part 'checkout_form_state.dart';
part 'checkout_form_cubit.freezed.dart';

@injectable
class CheckoutFormCubit extends Cubit<CheckoutFormState> {
  final IOrderRepository orderRepository;
  CheckoutFormCubit(this.orderRepository) : super(CheckoutFormState.initial());

  void orderCommentChanged(String orderComment) {
    emit(
      state.copyWith(
        order: state.order.copyWith(
          orderComment: OrderComment(orderComment),
        ),
      ),
    );
  }

  Future<bool> isValid() async {
    final isOrderCommentValid = state.order.orderComment.isValid();
    emit(state.copyWith());

    return isOrderCommentValid;
  }

  Future<void> createOrder(Cart userCart, LatLng lastPosition) async {
    Either<FirestoreFailure, Unit> submitFailureOrSucces;

    GeoPoint position = GeoPoint(lastPosition.latitude, lastPosition.longitude);
    final userData = await orderRepository.fetchUserData();
    submitFailureOrSucces = await orderRepository.createOrder(
      state.order.copyWith(
        userData: userData,
        cart: userCart,
        orderComment: state.order.orderComment,
        lastPosition: position,
      ),
    );

    emit(
      state.copyWith(
        submitFailureOrSucces: optionOf(submitFailureOrSucces),
      ),
    );
  }
}
