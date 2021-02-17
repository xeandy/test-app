import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/models/user/cart.dart';

abstract class ICartFacade {
  Future<void> addToCart(Item item);
  Future<void> removeFromCart(Item item);
  Future<void> deleteItem(Item item);
  Future<void> clearCart();
  Future<int> calculateTotalAmount();
  Future<Cart> getUserCart();
}
