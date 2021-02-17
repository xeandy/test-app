import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/order/value_objects.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/data/models/user/userData.dart';

part 'order.freezed.dart';

@freezed
abstract class OrderData with _$OrderData {
  const factory OrderData({
    @required String orderedTimeStamp,
    @required Cart cart,
    @required String orderID,
    @required OrderComment orderComment,
    @required UserData userData,
    @required GeoPoint lastPosition,
    @required bool inProcessing,
    @required bool onDelivery,
    @required bool delivered,
  }) = _OrderData;

  factory OrderData.empty() => OrderData(
        orderedTimeStamp: '',
        cart: Cart.empty(),
        orderID: '',
        userData: UserData.empty(),
        orderComment: OrderComment(''),
        lastPosition: GeoPoint(0.0, 0.0),
        inProcessing: false,
        onDelivery: false,
        delivered: false,
      );
}
