
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/value_ojects.dart';

part 'item.freezed.dart';

@freezed
abstract class Item with _$Item {
  const factory Item({
    @required Name name,
    @required Img itemImg,
    @required int price,
    @required Qty qty,
    @required int orderedQty,
    @required UniqueId productId,
    @required UniqueId categoryId,
    @required int discount,
    @required int salePrice,
    @required bool onSale,
    @required bool isNew,
  }) = _Item;

  factory Item.empty() => Item(
        name: Name(''),
        itemImg: Img(''),
        orderedQty: 1,
        price: 0,
        qty: Qty(''),
        productId: UniqueId(),
        categoryId: UniqueId(),
        discount: 0,
        salePrice: 0,
        onSale: false,
        isNew: false,
      );
}
