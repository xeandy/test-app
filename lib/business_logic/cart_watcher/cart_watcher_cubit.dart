import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/data/repositories/cart/i_cart_facade.dart';

part 'cart_watcher_state.dart';
part 'cart_watcher_cubit.freezed.dart';

@injectable
class CartWatcherCubit extends Cubit<CartWatcherState> {
  final ICartFacade cartFacade;
  CartWatcherCubit(this.cartFacade) : super(CartWatcherState.initial());

  Future<void> checkCart() async {
    final userCart = await cartFacade.getUserCart();

    if (userCart.items.length == 0) {
      emit(CartWatcherState.cartEmpty());
    } else {
      emit(CartWatcherState.cart(userCart: userCart));
    }
  }
}
