import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/data/repositories/cart/i_cart_facade.dart';

part 'cart_functions_state.dart';
part 'cart_functions_cubit.freezed.dart';

@injectable
class CartFunctionsCubit extends Cubit<CartFunctionsState> {
  final ICartFacade cartFacade;
  CartFunctionsCubit(this.cartFacade) : super(CartFunctionsState.initial());

  Future<void> getUserCart() async {
    final userCart = await cartFacade.getUserCart();
    emit(CartFunctionsState.cartLoaded(userCart: userCart));
  }

  Future<void> addToCart(Item item) async {
    await cartFacade.addToCart(item);
  }

  Future<void> removeFromCart(Item item) async {
    cartFacade.removeFromCart(item);
  }

  Future<void> clearAll() async {
    await cartFacade.clearCart();
  }

  Future<void> removeItem(Item item) async {
    cartFacade.deleteItem(item);
  }
}
