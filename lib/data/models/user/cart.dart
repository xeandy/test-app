import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/item/item.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    @required List<Item> items,
    @required int totalAmount,
  }) = _Cart;

  factory Cart.empty() => Cart(
        items: [],
        totalAmount: 0,
      );
}
