// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ItemDTO _$ItemDTOFromJson(Map<String, dynamic> json) {
  return _ItemDTO.fromJson(json);
}

/// @nodoc
class _$ItemDTOTearOff {
  const _$ItemDTOTearOff();

// ignore: unused_element
  _ItemDTO call(
      {@required String name,
      @required String image,
      @required int price,
      @required int quantity,
      @required String categoryID,
      @required String productID,
      @required int discount,
      @required int salePrice,
      @required bool onSale,
      @required bool isNew}) {
    return _ItemDTO(
      name: name,
      image: image,
      price: price,
      quantity: quantity,
      categoryID: categoryID,
      productID: productID,
      discount: discount,
      salePrice: salePrice,
      onSale: onSale,
      isNew: isNew,
    );
  }

// ignore: unused_element
  ItemDTO fromJson(Map<String, Object> json) {
    return ItemDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ItemDTO = _$ItemDTOTearOff();

/// @nodoc
mixin _$ItemDTO {
  String get name;
  String get image;
  int get price;
  int get quantity;
  String get categoryID;
  String get productID;
  int get discount;
  int get salePrice;
  bool get onSale;
  bool get isNew;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ItemDTOCopyWith<ItemDTO> get copyWith;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String image,
      int price,
      int quantity,
      String categoryID,
      String productID,
      int discount,
      int salePrice,
      bool onSale,
      bool isNew});
}

/// @nodoc
class _$ItemDTOCopyWithImpl<$Res> implements $ItemDTOCopyWith<$Res> {
  _$ItemDTOCopyWithImpl(this._value, this._then);

  final ItemDTO _value;
  // ignore: unused_field
  final $Res Function(ItemDTO) _then;

  @override
  $Res call({
    Object name = freezed,
    Object image = freezed,
    Object price = freezed,
    Object quantity = freezed,
    Object categoryID = freezed,
    Object productID = freezed,
    Object discount = freezed,
    Object salePrice = freezed,
    Object onSale = freezed,
    Object isNew = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      price: price == freezed ? _value.price : price as int,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      categoryID:
          categoryID == freezed ? _value.categoryID : categoryID as String,
      productID: productID == freezed ? _value.productID : productID as String,
      discount: discount == freezed ? _value.discount : discount as int,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as int,
      onSale: onSale == freezed ? _value.onSale : onSale as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
    ));
  }
}

/// @nodoc
abstract class _$ItemDTOCopyWith<$Res> implements $ItemDTOCopyWith<$Res> {
  factory _$ItemDTOCopyWith(_ItemDTO value, $Res Function(_ItemDTO) then) =
      __$ItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String image,
      int price,
      int quantity,
      String categoryID,
      String productID,
      int discount,
      int salePrice,
      bool onSale,
      bool isNew});
}

/// @nodoc
class __$ItemDTOCopyWithImpl<$Res> extends _$ItemDTOCopyWithImpl<$Res>
    implements _$ItemDTOCopyWith<$Res> {
  __$ItemDTOCopyWithImpl(_ItemDTO _value, $Res Function(_ItemDTO) _then)
      : super(_value, (v) => _then(v as _ItemDTO));

  @override
  _ItemDTO get _value => super._value as _ItemDTO;

  @override
  $Res call({
    Object name = freezed,
    Object image = freezed,
    Object price = freezed,
    Object quantity = freezed,
    Object categoryID = freezed,
    Object productID = freezed,
    Object discount = freezed,
    Object salePrice = freezed,
    Object onSale = freezed,
    Object isNew = freezed,
  }) {
    return _then(_ItemDTO(
      name: name == freezed ? _value.name : name as String,
      image: image == freezed ? _value.image : image as String,
      price: price == freezed ? _value.price : price as int,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      categoryID:
          categoryID == freezed ? _value.categoryID : categoryID as String,
      productID: productID == freezed ? _value.productID : productID as String,
      discount: discount == freezed ? _value.discount : discount as int,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as int,
      onSale: onSale == freezed ? _value.onSale : onSale as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ItemDTO extends _ItemDTO with DiagnosticableTreeMixin {
  const _$_ItemDTO(
      {@required this.name,
      @required this.image,
      @required this.price,
      @required this.quantity,
      @required this.categoryID,
      @required this.productID,
      @required this.discount,
      @required this.salePrice,
      @required this.onSale,
      @required this.isNew})
      : assert(name != null),
        assert(image != null),
        assert(price != null),
        assert(quantity != null),
        assert(categoryID != null),
        assert(productID != null),
        assert(discount != null),
        assert(salePrice != null),
        assert(onSale != null),
        assert(isNew != null),
        super._();

  factory _$_ItemDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemDTOFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final String categoryID;
  @override
  final String productID;
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
    return 'ItemDTO(name: $name, image: $image, price: $price, quantity: $quantity, categoryID: $categoryID, productID: $productID, discount: $discount, salePrice: $salePrice, onSale: $onSale, isNew: $isNew)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ItemDTO'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('categoryID', categoryID))
      ..add(DiagnosticsProperty('productID', productID))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('salePrice', salePrice))
      ..add(DiagnosticsProperty('onSale', onSale))
      ..add(DiagnosticsProperty('isNew', isNew));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.categoryID, categoryID) ||
                const DeepCollectionEquality()
                    .equals(other.categoryID, categoryID)) &&
            (identical(other.productID, productID) ||
                const DeepCollectionEquality()
                    .equals(other.productID, productID)) &&
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
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(categoryID) ^
      const DeepCollectionEquality().hash(productID) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(onSale) ^
      const DeepCollectionEquality().hash(isNew);

  @JsonKey(ignore: true)
  @override
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      __$ItemDTOCopyWithImpl<_ItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemDTOToJson(this);
  }
}

abstract class _ItemDTO extends ItemDTO {
  const _ItemDTO._() : super._();
  const factory _ItemDTO(
      {@required String name,
      @required String image,
      @required int price,
      @required int quantity,
      @required String categoryID,
      @required String productID,
      @required int discount,
      @required int salePrice,
      @required bool onSale,
      @required bool isNew}) = _$_ItemDTO;

  factory _ItemDTO.fromJson(Map<String, dynamic> json) = _$_ItemDTO.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  int get price;
  @override
  int get quantity;
  @override
  String get categoryID;
  @override
  String get productID;
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
  _$ItemDTOCopyWith<_ItemDTO> get copyWith;
}
