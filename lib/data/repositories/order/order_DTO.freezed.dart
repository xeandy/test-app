// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'order_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) {
  return _OrderDTO.fromJson(json);
}

/// @nodoc
class _$OrderDTOTearOff {
  const _$OrderDTOTearOff();

// ignore: unused_element
  _OrderDTO call(
      {@required int totalAmount,
      @required String orderedTimeStamp,
      @required List<OrderedItemDTO> items,
      @required String orderID,
      @required UserDataDTO userData,
      @required String orderComment,
      @required @GeoPointDTOConverter() GeoPoint lastPosition,
      @required bool inProcessing,
      @required bool onDelivery,
      @required bool delivered}) {
    return _OrderDTO(
      totalAmount: totalAmount,
      orderedTimeStamp: orderedTimeStamp,
      items: items,
      orderID: orderID,
      userData: userData,
      orderComment: orderComment,
      lastPosition: lastPosition,
      inProcessing: inProcessing,
      onDelivery: onDelivery,
      delivered: delivered,
    );
  }

// ignore: unused_element
  OrderDTO fromJson(Map<String, Object> json) {
    return OrderDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OrderDTO = _$OrderDTOTearOff();

/// @nodoc
mixin _$OrderDTO {
  int get totalAmount;
  String get orderedTimeStamp;
  List<OrderedItemDTO> get items;
  String get orderID;
  UserDataDTO get userData;
  String get orderComment;
  @GeoPointDTOConverter()
  GeoPoint get lastPosition;
  bool get inProcessing;
  bool get onDelivery;
  bool get delivered;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OrderDTOCopyWith<OrderDTO> get copyWith;
}

/// @nodoc
abstract class $OrderDTOCopyWith<$Res> {
  factory $OrderDTOCopyWith(OrderDTO value, $Res Function(OrderDTO) then) =
      _$OrderDTOCopyWithImpl<$Res>;
  $Res call(
      {int totalAmount,
      String orderedTimeStamp,
      List<OrderedItemDTO> items,
      String orderID,
      UserDataDTO userData,
      String orderComment,
      @GeoPointDTOConverter() GeoPoint lastPosition,
      bool inProcessing,
      bool onDelivery,
      bool delivered});

  $UserDataDTOCopyWith<$Res> get userData;
}

/// @nodoc
class _$OrderDTOCopyWithImpl<$Res> implements $OrderDTOCopyWith<$Res> {
  _$OrderDTOCopyWithImpl(this._value, this._then);

  final OrderDTO _value;
  // ignore: unused_field
  final $Res Function(OrderDTO) _then;

  @override
  $Res call({
    Object totalAmount = freezed,
    Object orderedTimeStamp = freezed,
    Object items = freezed,
    Object orderID = freezed,
    Object userData = freezed,
    Object orderComment = freezed,
    Object lastPosition = freezed,
    Object inProcessing = freezed,
    Object onDelivery = freezed,
    Object delivered = freezed,
  }) {
    return _then(_value.copyWith(
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as int,
      orderedTimeStamp: orderedTimeStamp == freezed
          ? _value.orderedTimeStamp
          : orderedTimeStamp as String,
      items: items == freezed ? _value.items : items as List<OrderedItemDTO>,
      orderID: orderID == freezed ? _value.orderID : orderID as String,
      userData: userData == freezed ? _value.userData : userData as UserDataDTO,
      orderComment: orderComment == freezed
          ? _value.orderComment
          : orderComment as String,
      lastPosition: lastPosition == freezed
          ? _value.lastPosition
          : lastPosition as GeoPoint,
      inProcessing:
          inProcessing == freezed ? _value.inProcessing : inProcessing as bool,
      onDelivery:
          onDelivery == freezed ? _value.onDelivery : onDelivery as bool,
      delivered: delivered == freezed ? _value.delivered : delivered as bool,
    ));
  }

  @override
  $UserDataDTOCopyWith<$Res> get userData {
    if (_value.userData == null) {
      return null;
    }
    return $UserDataDTOCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc
abstract class _$OrderDTOCopyWith<$Res> implements $OrderDTOCopyWith<$Res> {
  factory _$OrderDTOCopyWith(_OrderDTO value, $Res Function(_OrderDTO) then) =
      __$OrderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalAmount,
      String orderedTimeStamp,
      List<OrderedItemDTO> items,
      String orderID,
      UserDataDTO userData,
      String orderComment,
      @GeoPointDTOConverter() GeoPoint lastPosition,
      bool inProcessing,
      bool onDelivery,
      bool delivered});

  @override
  $UserDataDTOCopyWith<$Res> get userData;
}

/// @nodoc
class __$OrderDTOCopyWithImpl<$Res> extends _$OrderDTOCopyWithImpl<$Res>
    implements _$OrderDTOCopyWith<$Res> {
  __$OrderDTOCopyWithImpl(_OrderDTO _value, $Res Function(_OrderDTO) _then)
      : super(_value, (v) => _then(v as _OrderDTO));

  @override
  _OrderDTO get _value => super._value as _OrderDTO;

  @override
  $Res call({
    Object totalAmount = freezed,
    Object orderedTimeStamp = freezed,
    Object items = freezed,
    Object orderID = freezed,
    Object userData = freezed,
    Object orderComment = freezed,
    Object lastPosition = freezed,
    Object inProcessing = freezed,
    Object onDelivery = freezed,
    Object delivered = freezed,
  }) {
    return _then(_OrderDTO(
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as int,
      orderedTimeStamp: orderedTimeStamp == freezed
          ? _value.orderedTimeStamp
          : orderedTimeStamp as String,
      items: items == freezed ? _value.items : items as List<OrderedItemDTO>,
      orderID: orderID == freezed ? _value.orderID : orderID as String,
      userData: userData == freezed ? _value.userData : userData as UserDataDTO,
      orderComment: orderComment == freezed
          ? _value.orderComment
          : orderComment as String,
      lastPosition: lastPosition == freezed
          ? _value.lastPosition
          : lastPosition as GeoPoint,
      inProcessing:
          inProcessing == freezed ? _value.inProcessing : inProcessing as bool,
      onDelivery:
          onDelivery == freezed ? _value.onDelivery : onDelivery as bool,
      delivered: delivered == freezed ? _value.delivered : delivered as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OrderDTO extends _OrderDTO with DiagnosticableTreeMixin {
  const _$_OrderDTO(
      {@required this.totalAmount,
      @required this.orderedTimeStamp,
      @required this.items,
      @required this.orderID,
      @required this.userData,
      @required this.orderComment,
      @required @GeoPointDTOConverter() this.lastPosition,
      @required this.inProcessing,
      @required this.onDelivery,
      @required this.delivered})
      : assert(totalAmount != null),
        assert(orderedTimeStamp != null),
        assert(items != null),
        assert(orderID != null),
        assert(userData != null),
        assert(orderComment != null),
        assert(lastPosition != null),
        assert(inProcessing != null),
        assert(onDelivery != null),
        assert(delivered != null),
        super._();

  factory _$_OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDTOFromJson(json);

  @override
  final int totalAmount;
  @override
  final String orderedTimeStamp;
  @override
  final List<OrderedItemDTO> items;
  @override
  final String orderID;
  @override
  final UserDataDTO userData;
  @override
  final String orderComment;
  @override
  @GeoPointDTOConverter()
  final GeoPoint lastPosition;
  @override
  final bool inProcessing;
  @override
  final bool onDelivery;
  @override
  final bool delivered;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderDTO(totalAmount: $totalAmount, orderedTimeStamp: $orderedTimeStamp, items: $items, orderID: $orderID, userData: $userData, orderComment: $orderComment, lastPosition: $lastPosition, inProcessing: $inProcessing, onDelivery: $onDelivery, delivered: $delivered)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderDTO'))
      ..add(DiagnosticsProperty('totalAmount', totalAmount))
      ..add(DiagnosticsProperty('orderedTimeStamp', orderedTimeStamp))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('orderID', orderID))
      ..add(DiagnosticsProperty('userData', userData))
      ..add(DiagnosticsProperty('orderComment', orderComment))
      ..add(DiagnosticsProperty('lastPosition', lastPosition))
      ..add(DiagnosticsProperty('inProcessing', inProcessing))
      ..add(DiagnosticsProperty('onDelivery', onDelivery))
      ..add(DiagnosticsProperty('delivered', delivered));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDTO &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.orderedTimeStamp, orderedTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.orderedTimeStamp, orderedTimeStamp)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.orderID, orderID) ||
                const DeepCollectionEquality()
                    .equals(other.orderID, orderID)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.orderComment, orderComment) ||
                const DeepCollectionEquality()
                    .equals(other.orderComment, orderComment)) &&
            (identical(other.lastPosition, lastPosition) ||
                const DeepCollectionEquality()
                    .equals(other.lastPosition, lastPosition)) &&
            (identical(other.inProcessing, inProcessing) ||
                const DeepCollectionEquality()
                    .equals(other.inProcessing, inProcessing)) &&
            (identical(other.onDelivery, onDelivery) ||
                const DeepCollectionEquality()
                    .equals(other.onDelivery, onDelivery)) &&
            (identical(other.delivered, delivered) ||
                const DeepCollectionEquality()
                    .equals(other.delivered, delivered)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(orderedTimeStamp) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(orderID) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(orderComment) ^
      const DeepCollectionEquality().hash(lastPosition) ^
      const DeepCollectionEquality().hash(inProcessing) ^
      const DeepCollectionEquality().hash(onDelivery) ^
      const DeepCollectionEquality().hash(delivered);

  @JsonKey(ignore: true)
  @override
  _$OrderDTOCopyWith<_OrderDTO> get copyWith =>
      __$OrderDTOCopyWithImpl<_OrderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDTOToJson(this);
  }
}

abstract class _OrderDTO extends OrderDTO {
  const _OrderDTO._() : super._();
  const factory _OrderDTO(
      {@required int totalAmount,
      @required String orderedTimeStamp,
      @required List<OrderedItemDTO> items,
      @required String orderID,
      @required UserDataDTO userData,
      @required String orderComment,
      @required @GeoPointDTOConverter() GeoPoint lastPosition,
      @required bool inProcessing,
      @required bool onDelivery,
      @required bool delivered}) = _$_OrderDTO;

  factory _OrderDTO.fromJson(Map<String, dynamic> json) = _$_OrderDTO.fromJson;

  @override
  int get totalAmount;
  @override
  String get orderedTimeStamp;
  @override
  List<OrderedItemDTO> get items;
  @override
  String get orderID;
  @override
  UserDataDTO get userData;
  @override
  String get orderComment;
  @override
  @GeoPointDTOConverter()
  GeoPoint get lastPosition;
  @override
  bool get inProcessing;
  @override
  bool get onDelivery;
  @override
  bool get delivered;
  @override
  @JsonKey(ignore: true)
  _$OrderDTOCopyWith<_OrderDTO> get copyWith;
}

OrderedItemDTO _$OrderedItemDTOFromJson(Map<String, dynamic> json) {
  return _OrderedItemDTO.fromJson(json);
}

/// @nodoc
class _$OrderedItemDTOTearOff {
  const _$OrderedItemDTOTearOff();

// ignore: unused_element
  _OrderedItemDTO call({@required String itemName, @required int orderedQty}) {
    return _OrderedItemDTO(
      itemName: itemName,
      orderedQty: orderedQty,
    );
  }

// ignore: unused_element
  OrderedItemDTO fromJson(Map<String, Object> json) {
    return OrderedItemDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OrderedItemDTO = _$OrderedItemDTOTearOff();

/// @nodoc
mixin _$OrderedItemDTO {
  String get itemName;
  int get orderedQty;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OrderedItemDTOCopyWith<OrderedItemDTO> get copyWith;
}

/// @nodoc
abstract class $OrderedItemDTOCopyWith<$Res> {
  factory $OrderedItemDTOCopyWith(
          OrderedItemDTO value, $Res Function(OrderedItemDTO) then) =
      _$OrderedItemDTOCopyWithImpl<$Res>;
  $Res call({String itemName, int orderedQty});
}

/// @nodoc
class _$OrderedItemDTOCopyWithImpl<$Res>
    implements $OrderedItemDTOCopyWith<$Res> {
  _$OrderedItemDTOCopyWithImpl(this._value, this._then);

  final OrderedItemDTO _value;
  // ignore: unused_field
  final $Res Function(OrderedItemDTO) _then;

  @override
  $Res call({
    Object itemName = freezed,
    Object orderedQty = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      orderedQty: orderedQty == freezed ? _value.orderedQty : orderedQty as int,
    ));
  }
}

/// @nodoc
abstract class _$OrderedItemDTOCopyWith<$Res>
    implements $OrderedItemDTOCopyWith<$Res> {
  factory _$OrderedItemDTOCopyWith(
          _OrderedItemDTO value, $Res Function(_OrderedItemDTO) then) =
      __$OrderedItemDTOCopyWithImpl<$Res>;
  @override
  $Res call({String itemName, int orderedQty});
}

/// @nodoc
class __$OrderedItemDTOCopyWithImpl<$Res>
    extends _$OrderedItemDTOCopyWithImpl<$Res>
    implements _$OrderedItemDTOCopyWith<$Res> {
  __$OrderedItemDTOCopyWithImpl(
      _OrderedItemDTO _value, $Res Function(_OrderedItemDTO) _then)
      : super(_value, (v) => _then(v as _OrderedItemDTO));

  @override
  _OrderedItemDTO get _value => super._value as _OrderedItemDTO;

  @override
  $Res call({
    Object itemName = freezed,
    Object orderedQty = freezed,
  }) {
    return _then(_OrderedItemDTO(
      itemName: itemName == freezed ? _value.itemName : itemName as String,
      orderedQty: orderedQty == freezed ? _value.orderedQty : orderedQty as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OrderedItemDTO extends _OrderedItemDTO with DiagnosticableTreeMixin {
  const _$_OrderedItemDTO({@required this.itemName, @required this.orderedQty})
      : assert(itemName != null),
        assert(orderedQty != null),
        super._();

  factory _$_OrderedItemDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderedItemDTOFromJson(json);

  @override
  final String itemName;
  @override
  final int orderedQty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderedItemDTO(itemName: $itemName, orderedQty: $orderedQty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderedItemDTO'))
      ..add(DiagnosticsProperty('itemName', itemName))
      ..add(DiagnosticsProperty('orderedQty', orderedQty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderedItemDTO &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.orderedQty, orderedQty) ||
                const DeepCollectionEquality()
                    .equals(other.orderedQty, orderedQty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(orderedQty);

  @JsonKey(ignore: true)
  @override
  _$OrderedItemDTOCopyWith<_OrderedItemDTO> get copyWith =>
      __$OrderedItemDTOCopyWithImpl<_OrderedItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderedItemDTOToJson(this);
  }
}

abstract class _OrderedItemDTO extends OrderedItemDTO {
  const _OrderedItemDTO._() : super._();
  const factory _OrderedItemDTO(
      {@required String itemName,
      @required int orderedQty}) = _$_OrderedItemDTO;

  factory _OrderedItemDTO.fromJson(Map<String, dynamic> json) =
      _$_OrderedItemDTO.fromJson;

  @override
  String get itemName;
  @override
  int get orderedQty;
  @override
  @JsonKey(ignore: true)
  _$OrderedItemDTOCopyWith<_OrderedItemDTO> get copyWith;
}
