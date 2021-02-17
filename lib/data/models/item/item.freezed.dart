// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required Name name,
      @required Img itemImg,
      @required int price,
      @required Qty qty,
      @required int orderedQty,
      @required UniqueId productId,
      @required UniqueId categoryId,
      @required int discount,
      @required int salePrice,
      @required bool onSale,
      @required bool isNew}) {
    return _Item(
      name: name,
      itemImg: itemImg,
      price: price,
      qty: qty,
      orderedQty: orderedQty,
      productId: productId,
      categoryId: categoryId,
      discount: discount,
      salePrice: salePrice,
      onSale: onSale,
      isNew: isNew,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  Name get name;
  Img get itemImg;
  int get price;
  Qty get qty;
  int get orderedQty;
  UniqueId get productId;
  UniqueId get categoryId;
  int get discount;
  int get salePrice;
  bool get onSale;
  bool get isNew;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      Img itemImg,
      int price,
      Qty qty,
      int orderedQty,
      UniqueId productId,
      UniqueId categoryId,
      int discount,
      int salePrice,
      bool onSale,
      bool isNew});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object name = freezed,
    Object itemImg = freezed,
    Object price = freezed,
    Object qty = freezed,
    Object orderedQty = freezed,
    Object productId = freezed,
    Object categoryId = freezed,
    Object discount = freezed,
    Object salePrice = freezed,
    Object onSale = freezed,
    Object isNew = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Name,
      itemImg: itemImg == freezed ? _value.itemImg : itemImg as Img,
      price: price == freezed ? _value.price : price as int,
      qty: qty == freezed ? _value.qty : qty as Qty,
      orderedQty: orderedQty == freezed ? _value.orderedQty : orderedQty as int,
      productId:
          productId == freezed ? _value.productId : productId as UniqueId,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      discount: discount == freezed ? _value.discount : discount as int,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as int,
      onSale: onSale == freezed ? _value.onSale : onSale as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      Img itemImg,
      int price,
      Qty qty,
      int orderedQty,
      UniqueId productId,
      UniqueId categoryId,
      int discount,
      int salePrice,
      bool onSale,
      bool isNew});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object name = freezed,
    Object itemImg = freezed,
    Object price = freezed,
    Object qty = freezed,
    Object orderedQty = freezed,
    Object productId = freezed,
    Object categoryId = freezed,
    Object discount = freezed,
    Object salePrice = freezed,
    Object onSale = freezed,
    Object isNew = freezed,
  }) {
    return _then(_Item(
      name: name == freezed ? _value.name : name as Name,
      itemImg: itemImg == freezed ? _value.itemImg : itemImg as Img,
      price: price == freezed ? _value.price : price as int,
      qty: qty == freezed ? _value.qty : qty as Qty,
      orderedQty: orderedQty == freezed ? _value.orderedQty : orderedQty as int,
      productId:
          productId == freezed ? _value.productId : productId as UniqueId,
      categoryId:
          categoryId == freezed ? _value.categoryId : categoryId as UniqueId,
      discount: discount == freezed ? _value.discount : discount as int,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as int,
      onSale: onSale == freezed ? _value.onSale : onSale as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
    ));
  }
}

/// @nodoc
class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(
      {@required this.name,
      @required this.itemImg,
      @required this.price,
      @required this.qty,
      @required this.orderedQty,
      @required this.productId,
      @required this.categoryId,
      @required this.discount,
      @required this.salePrice,
      @required this.onSale,
      @required this.isNew})
      : assert(name != null),
        assert(itemImg != null),
        assert(price != null),
        assert(qty != null),
        assert(orderedQty != null),
        assert(productId != null),
        assert(categoryId != null),
        assert(discount != null),
        assert(salePrice != null),
        assert(onSale != null),
        assert(isNew != null);

  @override
  final Name name;
  @override
  final Img itemImg;
  @override
  final int price;
  @override
  final Qty qty;
  @override
  final int orderedQty;
  @override
  final UniqueId productId;
  @override
  final UniqueId categoryId;
  @override
  final int discount;
  @override
  final int salePrice;
  @override
  final bool onSale;
  @override
  final bool isNew;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(name: $name, itemImg: $itemImg, price: $price, qty: $qty, orderedQty: $orderedQty, productId: $productId, categoryId: $categoryId, discount: $discount, salePrice: $salePrice, onSale: $onSale, isNew: $isNew)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('itemImg', itemImg))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('orderedQty', orderedQty))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('categoryId', categoryId))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('salePrice', salePrice))
      ..add(DiagnosticsProperty('onSale', onSale))
      ..add(DiagnosticsProperty('isNew', isNew));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.itemImg, itemImg) ||
                const DeepCollectionEquality()
                    .equals(other.itemImg, itemImg)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.orderedQty, orderedQty) ||
                const DeepCollectionEquality()
                    .equals(other.orderedQty, orderedQty)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.salePrice, salePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salePrice, salePrice)) &&
            (identical(other.onSale, onSale) ||
                const DeepCollectionEquality().equals(other.onSale, onSale)) &&
            (identical(other.isNew, isNew) ||
                const DeepCollectionEquality().equals(other.isNew, isNew)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(itemImg) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(orderedQty) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(onSale) ^
      const DeepCollectionEquality().hash(isNew);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(
      {@required Name name,
      @required Img itemImg,
      @required int price,
      @required Qty qty,
      @required int orderedQty,
      @required UniqueId productId,
      @required UniqueId categoryId,
      @required int discount,
      @required int salePrice,
      @required bool onSale,
      @required bool isNew}) = _$_Item;

  @override
  Name get name;
  @override
  Img get itemImg;
  @override
  int get price;
  @override
  Qty get qty;
  @override
  int get orderedQty;
  @override
  UniqueId get productId;
  @override
  UniqueId get categoryId;
  @override
  int get discount;
  @override
  int get salePrice;
  @override
  bool get onSale;
  @override
  bool get isNew;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith;
}
