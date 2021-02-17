// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartTearOff {
  const _$CartTearOff();

// ignore: unused_element
  _Cart call({@required List<Item> items, @required int totalAmount}) {
    return _Cart(
      items: items,
      totalAmount: totalAmount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Cart = _$CartTearOff();

/// @nodoc
mixin _$Cart {
  List<Item> get items;
  int get totalAmount;

  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({List<Item> items, int totalAmount});
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object items = freezed,
    Object totalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<Item>,
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as int,
    ));
  }
}

/// @nodoc
abstract class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) then) =
      __$CartCopyWithImpl<$Res>;
  @override
  $Res call({List<Item> items, int totalAmount});
}

/// @nodoc
class __$CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(_Cart _value, $Res Function(_Cart) _then)
      : super(_value, (v) => _then(v as _Cart));

  @override
  _Cart get _value => super._value as _Cart;

  @override
  $Res call({
    Object items = freezed,
    Object totalAmount = freezed,
  }) {
    return _then(_Cart(
      items: items == freezed ? _value.items : items as List<Item>,
      totalAmount:
          totalAmount == freezed ? _value.totalAmount : totalAmount as int,
    ));
  }
}

/// @nodoc
class _$_Cart implements _Cart {
  const _$_Cart({@required this.items, @required this.totalAmount})
      : assert(items != null),
        assert(totalAmount != null);

  @override
  final List<Item> items;
  @override
  final int totalAmount;

  @override
  String toString() {
    return 'Cart(items: $items, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cart &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(totalAmount);

  @JsonKey(ignore: true)
  @override
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);
}

abstract class _Cart implements Cart {
  const factory _Cart({@required List<Item> items, @required int totalAmount}) =
      _$_Cart;

  @override
  List<Item> get items;
  @override
  int get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$CartCopyWith<_Cart> get copyWith;
}
