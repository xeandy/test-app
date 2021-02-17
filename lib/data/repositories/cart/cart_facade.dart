
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/data/repositories/cart/i_cart_facade.dart';

@LazySingleton(as: ICartFacade)
class CartFacade implements ICartFacade {
  final Cart userCart;

  CartFacade(this.userCart);
  @override
  Future<void> addToCart(Item item) async {
    userCart.items.add(item);
  }

  @override
  Future<void> clearCart() async {
    userCart.items.clear();
  }

  @override
  Future<void> removeFromCart(Item item) async {
    userCart.items.remove(item);
  }

  @override
  Future<void> deleteItem(Item currentItem) async {
    userCart.items
        .removeWhere((item) => item.productId == currentItem.productId);
  }

  @override
  Future<int> calculateTotalAmount() async {
    var total = userCart.totalAmount;

    userCart.items.forEach((item) async {
      if (item.onSale) {
        total += item.salePrice;
      } else {
        total += item.price;
      }
    });
    return total; //rabotaet
  }

  @override
  Future<Cart> getUserCart() async {
    final total = await this.calculateTotalAmount();
    return userCart.copyWith(
      totalAmount: total,
      items: userCart.items,
    ); // rabotaet
  }
}
