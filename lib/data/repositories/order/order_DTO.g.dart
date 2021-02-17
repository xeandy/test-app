// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDTO _$_$_OrderDTOFromJson(Map<String, dynamic> json) {
  return _$_OrderDTO(
    totalAmount: json['totalAmount'] as int,
    orderedTimeStamp: json['orderedTimeStamp'] as String,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : OrderedItemDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    orderID: json['orderID'] as String,
    userData: json['userData'] == null
        ? null
        : UserDataDTO.fromJson(json['userData'] as Map<String, dynamic>),
    orderComment: json['orderComment'] as String,
    lastPosition:
        const GeoPointDTOConverter().fromJson(json['lastPosition'] as GeoPoint),
    inProcessing: json['inProcessing'] as bool,
    onDelivery: json['onDelivery'] as bool,
    delivered: json['delivered'] as bool,
  );
}

Map<String, dynamic> _$_$_OrderDTOToJson(_$_OrderDTO instance) =>
    <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'orderedTimeStamp': instance.orderedTimeStamp,
      'items': instance.items?.map((e) => e?.toJson())?.toList(),
      'orderID': instance.orderID,
      'userData': instance.userData?.toJson(),
      'orderComment': instance.orderComment,
      'lastPosition':
          const GeoPointDTOConverter().toJson(instance.lastPosition),
      'inProcessing': instance.inProcessing,
      'onDelivery': instance.onDelivery,
      'delivered': instance.delivered,
    };

_$_OrderedItemDTO _$_$_OrderedItemDTOFromJson(Map<String, dynamic> json) {
  return _$_OrderedItemDTO(
    itemName: json['itemName'] as String,
    orderedQty: json['orderedQty'] as int,
  );
}

Map<String, dynamic> _$_$_OrderedItemDTOToJson(_$_OrderedItemDTO instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'orderedQty': instance.orderedQty,
    };
