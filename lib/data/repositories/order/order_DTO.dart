import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/models/item/value_ojects.dart';
import 'package:test_app/data/models/order/order.dart';
import 'package:test_app/data/models/order/value_objects.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/data/repositories/user/userData_DTO.dart';

part 'order_DTO.freezed.dart';
part 'order_DTO.g.dart';

@freezed
abstract class OrderDTO with _$OrderDTO {
  const OrderDTO._();

  const factory OrderDTO({
    @required int totalAmount,
    @required String orderedTimeStamp,
    @required List<OrderedItemDTO> items,
    @required String orderID,
    @required UserDataDTO userData,
    @required String orderComment,
    @required @GeoPointDTOConverter() GeoPoint lastPosition,
    @required bool inProcessing,
    @required bool onDelivery,
    @required bool delivered,
  }) = _OrderDTO;

  factory OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderDTOFromJson(json);

  factory OrderDTO.fromDomain(OrderData order) {
    final format = DateFormat('yyyy-MM-dd hh:mm');
    final orderedTimeStamp = format.format(DateTime.now());
    return OrderDTO(
      items: order.cart.items
          .map((item) => OrderedItemDTO.fromDomain(item, order.cart))
          .toList(),
      totalAmount: order.cart.totalAmount,
      orderComment: order.orderComment.getOrCrash(),
      orderedTimeStamp: orderedTimeStamp,
      orderID: order.orderID,
      userData: UserDataDTO.fromDomain(order.userData),
      lastPosition: order.lastPosition,
      inProcessing: order.inProcessing,
      onDelivery: order.onDelivery,
      delivered: order.delivered,
    );
  }

  OrderData toDomain() {
    return OrderData(
      orderedTimeStamp: orderedTimeStamp,
      orderComment: OrderComment(orderComment),
      orderID: orderID,
      userData: userData.toDomain(),
      cart: Cart(
        items: items.map((e) => e.toDomain()).toList(),
        totalAmount: totalAmount,
      ),
      lastPosition: lastPosition,
      onDelivery: onDelivery,
      inProcessing: inProcessing,
      delivered: delivered,
    );
  }
}

class GeoPointDTOConverter implements JsonConverter<GeoPoint, GeoPoint> {
  const GeoPointDTOConverter();
  @override
  GeoPoint fromJson(GeoPoint json) {
    return json;
  }

  @override
  GeoPoint toJson(GeoPoint data) {
    return data;
  }
}

@freezed
abstract class OrderedItemDTO implements _$OrderedItemDTO {
  const OrderedItemDTO._();

  const factory OrderedItemDTO({
    @required String itemName,
    @required int orderedQty,
    // @required int salePrice,
    // @required int discount,
  }) = _OrderedItemDTO;

  factory OrderedItemDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderedItemDTOFromJson(json);

  factory OrderedItemDTO.fromDomain(Item item, Cart userCart) {
    return OrderedItemDTO(
      itemName: item.name.getOrCrash(),
      orderedQty: userCart.items
          .where((cartItem) => cartItem.productId == item.productId)
          .length,
      // salePrice: item.salePrcie,
      // discount: item.discount,
    );
  }

  Item toDomain() {
    return Item(
      name: Name(itemName),
      orderedQty: orderedQty,
      itemImg: Img(''),
      price: 0,
      qty: Qty(''),
      categoryId: UniqueId.fromUniqueString(''),
      productId: UniqueId.fromUniqueString(''),
      salePrice: 0,
      discount: 0,
      onSale: false,
      isNew: false,
    );
  }
}
