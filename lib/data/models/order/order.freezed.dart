// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OrderDataTearOff {
  const _$OrderDataTearOff();

// ignore: unused_element
  _OrderData call(
      {@required String orderedTimeStamp,
      @required Cart cart,
      @required String orderID,
      @required OrderComment orderComment,
      @required UserData userData,
      @required GeoPoint lastPosition,
      @required bool inProcessing,
      @required bool onDelivery,
      @required bool delivered}) {
    return _OrderData(
      orderedTimeStamp: orderedTimeStamp,
      cart: cart,
      orderID: orderID,
      orderComment: orderComment,
      userData: userData,
      lastPosition: lastPosition,
      inProcessing: inProcessing,
      onDelivery: onDelivery,
      delivered: delivered,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OrderData = _$OrderDataTearOff();

/// @nodoc
mixin _$OrderData {
  String get orderedTimeStamp;
  Cart get cart;
  String get orderID;
  OrderComment get orderComment;
  UserData get userData;
  GeoPoint get lastPosition;
  bool get inProcessing;
  bool get onDelivery;
  bool get delivered;

  @JsonKey(ignore: true)
  $OrderDataCopyWith<OrderData> get copyWith;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res>;
  $Res call(
      {String orderedTimeStamp,
      Cart cart,
      String orderID,
      OrderComment orderComment,
      UserData userData,
      GeoPoint lastPosition,
      bool inProcessing,
      bool onDelivery,
      bool delivered});

  $CartCopyWith<$Res> get cart;
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res> implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  final OrderData _value;
  // ignore: unused_field
  final $Res Function(OrderData) _then;

  @override
  $Res call({
    Object orderedTimeStamp = freezed,
    Object cart = freezed,
    Object orderID = freezed,
    Object orderComment = freezed,
    Object userData = freezed,
    Object lastPosition = freezed,
    Object inProcessing = freezed,
    Object onDelivery = freezed,
    Object delivered = freezed,
  }) {
    return _then(_value.copyWith(
      orderedTimeStamp: orderedTimeStamp == freezed
          ? _value.orderedTimeStamp
          : orderedTimeStamp as String,
      cart: cart == freezed ? _value.cart : cart as Cart,
      orderID: orderID == freezed ? _value.orderID : orderID as String,
      orderComment: orderComment == freezed
          ? _value.orderComment
          : orderComment as OrderComment,
      userData: userData == freezed ? _value.userData : userData as UserData,
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
  $CartCopyWith<$Res> get cart {
    if (_value.cart == null) {
      return null;
    }
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }

  @override
  $UserDataCopyWith<$Res> get userData {
    if (_value.userData == null) {
      return null;
    }
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc
abstract class _$OrderDataCopyWith<$Res> implements $OrderDataCopyWith<$Res> {
  factory _$OrderDataCopyWith(
          _OrderData value, $Res Function(_OrderData) then) =
      __$OrderDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String orderedTimeStamp,
      Cart cart,
      String orderID,
      OrderComment orderComment,
      UserData userData,
      GeoPoint lastPosition,
      bool inProcessing,
      bool onDelivery,
      bool delivered});

  @override
  $CartCopyWith<$Res> get cart;
  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$OrderDataCopyWithImpl<$Res> extends _$OrderDataCopyWithImpl<$Res>
    implements _$OrderDataCopyWith<$Res> {
  __$OrderDataCopyWithImpl(_OrderData _value, $Res Function(_OrderData) _then)
      : super(_value, (v) => _then(v as _OrderData));

  @override
  _OrderData get _value => super._value as _OrderData;

  @override
  $Res call({
    Object orderedTimeStamp = freezed,
    Object cart = freezed,
    Object orderID = freezed,
    Object orderComment = freezed,
    Object userData = freezed,
    Object lastPosition = freezed,
    Object inProcessing = freezed,
    Object onDelivery = freezed,
    Object delivered = freezed,
  }) {
    return _then(_OrderData(
      orderedTimeStamp: orderedTimeStamp == freezed
          ? _value.orderedTimeStamp
          : orderedTimeStamp as String,
      cart: cart == freezed ? _value.cart : cart as Cart,
      orderID: orderID == freezed ? _value.orderID : orderID as String,
      orderComment: orderComment == freezed
          ? _value.orderComment
          : orderComment as OrderComment,
      userData: userData == freezed ? _value.userData : userData as UserData,
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

/// @nodoc
class _$_OrderData implements _OrderData {
  const _$_OrderData(
      {@required this.orderedTimeStamp,
      @required this.cart,
      @required this.orderID,
      @required this.orderComment,
      @required this.userData,
      @required this.lastPosition,
      @required this.inProcessing,
      @required this.onDelivery,
      @required this.delivered})
      : assert(orderedTimeStamp != null),
        assert(cart != null),
        assert(orderID != null),
        assert(orderComment != null),
        assert(userData != null),
        assert(lastPosition != null),
        assert(inProcessing != null),
        assert(onDelivery != null),
        assert(delivered != null);

  @override
  final String orderedTimeStamp;
  @override
  final Cart cart;
  @override
  final String orderID;
  @override
  final OrderComment orderComment;
  @override
  final UserData userData;
  @override
  final GeoPoint lastPosition;
  @override
  final bool inProcessing;
  @override
  final bool onDelivery;
  @override
  final bool delivered;

  @override
  String toString() {
    return 'OrderData(orderedTimeStamp: $orderedTimeStamp, cart: $cart, orderID: $orderID, orderComment: $orderComment, userData: $userData, lastPosition: $lastPosition, inProcessing: $inProcessing, onDelivery: $onDelivery, delivered: $delivered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderData &&
            (identical(other.orderedTimeStamp, orderedTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.orderedTimeStamp, orderedTimeStamp)) &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)) &&
            (identical(other.orderID, orderID) ||
                const DeepCollectionEquality()
                    .equals(other.orderID, orderID)) &&
            (identical(other.orderComment, orderComment) ||
                const DeepCollectionEquality()
                    .equals(other.orderComment, orderComment)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
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
      const DeepCollectionEquality().hash(orderedTimeStamp) ^
      const DeepCollectionEquality().hash(cart) ^
      const DeepCollectionEquality().hash(orderID) ^
      const DeepCollectionEquality().hash(orderComment) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(lastPosition) ^
      const DeepCollectionEquality().hash(inProcessing) ^
      const DeepCollectionEquality().hash(onDelivery) ^
      const DeepCollectionEquality().hash(delivered);

  @JsonKey(ignore: true)
  @override
  _$OrderDataCopyWith<_OrderData> get copyWith =>
      __$OrderDataCopyWithImpl<_OrderData>(this, _$identity);
}

abstract class _OrderData implements OrderData {
  const factory _OrderData(
      {@required String orderedTimeStamp,
      @required Cart cart,
      @required String orderID,
      @required OrderComment orderComment,
      @required UserData userData,
      @required GeoPoint lastPosition,
      @required bool inProcessing,
      @required bool onDelivery,
      @required bool delivered}) = _$_OrderData;

  @override
  String get orderedTimeStamp;
  @override
  Cart get cart;
  @override
  String get orderID;
  @override
  OrderComment get orderComment;
  @override
  UserData get userData;
  @override
  GeoPoint get lastPosition;
  @override
  bool get inProcessing;
  @override
  bool get onDelivery;
  @override
  bool get delivered;
  @override
  @JsonKey(ignore: true)
  _$OrderDataCopyWith<_OrderData> get copyWith;
}
