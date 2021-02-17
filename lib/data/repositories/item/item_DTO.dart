import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/models/item/value_ojects.dart';

part 'item_DTO.freezed.dart';
part 'item_DTO.g.dart';

@freezed
abstract class ItemDTO with _$ItemDTO {
  const ItemDTO._();
  const factory ItemDTO({
    @required String name,
    @required String image,
    @required int price,
    @required int quantity,
    @required String categoryID,
    @required String productID,
    @required int discount,
    @required int salePrice,
    @required bool onSale,
    @required bool isNew,
  }) = _ItemDTO;

  factory ItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ItemDTOFromJson(json);

  factory ItemDTO.fromDomain(Item itemData) {
    return ItemDTO(
      name: itemData.name.getOrCrash(),
      image: itemData.itemImg.getOrCrash(),
      price: itemData.price,
      quantity: int.parse(itemData.qty.getOrCrash()),
      categoryID: itemData.categoryId.getOrCrash(),
      productID: itemData.productId.getOrCrash(),
      discount: itemData.discount,
      salePrice: itemData.salePrice,
      onSale: itemData.onSale,
      isNew: itemData.isNew,
    );
  }

  Item toDomain() {
    return Item(
      name: Name(name),
      itemImg: Img(image),
      price: price,
      orderedQty: 1,
      qty: Qty(quantity.toString()),
      categoryId: UniqueId.fromUniqueString(categoryID),
      productId: UniqueId.fromUniqueString(productID),
      discount: discount,
      salePrice: salePrice,
      onSale: onSale,
      isNew: isNew,
    );
  }
}
