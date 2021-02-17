// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDTO _$_$_ItemDTOFromJson(Map<String, dynamic> json) {
  return _$_ItemDTO(
    name: json['name'] as String,
    image: json['image'] as String,
    price: json['price'] as int,
    quantity: json['quantity'] as int,
    categoryID: json['categoryID'] as String,
    productID: json['productID'] as String,
    discount: json['discount'] as int,
    salePrice: json['salePrice'] as int,
    onSale: json['onSale'] as bool,
    isNew: json['isNew'] as bool,
  );
}

Map<String, dynamic> _$_$_ItemDTOToJson(_$_ItemDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'quantity': instance.quantity,
      'categoryID': instance.categoryID,
      'productID': instance.productID,
      'discount': instance.discount,
      'salePrice': instance.salePrice,
      'onSale': instance.onSale,
      'isNew': instance.isNew,
    };
