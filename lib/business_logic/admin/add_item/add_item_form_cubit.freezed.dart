// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_item_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddItemFormStateTearOff {
  const _$AddItemFormStateTearOff();

// ignore: unused_element
  _AddItemFormState call(
      {@required String name,
      @required int price,
      @required int discount,
      @required int salePrice,
      @required int qty,
      @required String imageUrl,
      @required File image,
      @required bool isAdding,
      @required bool isAdded,
      @required Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces}) {
    return _AddItemFormState(
      name: name,
      price: price,
      discount: discount,
      salePrice: salePrice,
      qty: qty,
      imageUrl: imageUrl,
      image: image,
      isAdding: isAdding,
      isAdded: isAdded,
      submitFailureOrSucces: submitFailureOrSucces,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddItemFormState = _$AddItemFormStateTearOff();

/// @nodoc
mixin _$AddItemFormState {
  String get name;
  int get price;
  int get discount;
  int get salePrice;
  int get qty;
  String get imageUrl;
  File get image;
  bool get isAdding;
  bool get isAdded;
  Option<Either<FirestoreFailure, Unit>> get submitFailureOrSucces;

  @JsonKey(ignore: true)
  $AddItemFormStateCopyWith<AddItemFormState> get copyWith;
}

/// @nodoc
abstract class $AddItemFormStateCopyWith<$Res> {
  factory $AddItemFormStateCopyWith(
          AddItemFormState value, $Res Function(AddItemFormState) then) =
      _$AddItemFormStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int price,
      int discount,
      int salePrice,
      int qty,
      String imageUrl,
      File image,
      bool isAdding,
      bool isAdded,
      Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces});
}

/// @nodoc
class _$AddItemFormStateCopyWithImpl<$Res>
    implements $AddItemFormStateCopyWith<$Res> {
  _$AddItemFormStateCopyWithImpl(this._value, this._then);

  final AddItemFormState _value;
  // ignore: unused_field
  final $Res Function(AddItemFormState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object price = freezed,
    Object discount = freezed,
    Object salePrice = freezed,
    Object qty = freezed,
    Object imageUrl = freezed,
    Object image = freezed,
    Object isAdding = freezed,
    Object isAdded = freezed,
    Object submitFailureOrSucces = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as int,
      discount: discount == freezed ? _value.discount : discount as int,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as int,
      qty: qty == freezed ? _value.qty : qty as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      image: image == freezed ? _value.image : image as File,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      isAdded: isAdded == freezed ? _value.isAdded : isAdded as bool,
      submitFailureOrSucces: submitFailureOrSucces == freezed
          ? _value.submitFailureOrSucces
          : submitFailureOrSucces as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AddItemFormStateCopyWith<$Res>
    implements $AddItemFormStateCopyWith<$Res> {
  factory _$AddItemFormStateCopyWith(
          _AddItemFormState value, $Res Function(_AddItemFormState) then) =
      __$AddItemFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int price,
      int discount,
      int salePrice,
      int qty,
      String imageUrl,
      File image,
      bool isAdding,
      bool isAdded,
      Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces});
}

/// @nodoc
class __$AddItemFormStateCopyWithImpl<$Res>
    extends _$AddItemFormStateCopyWithImpl<$Res>
    implements _$AddItemFormStateCopyWith<$Res> {
  __$AddItemFormStateCopyWithImpl(
      _AddItemFormState _value, $Res Function(_AddItemFormState) _then)
      : super(_value, (v) => _then(v as _AddItemFormState));

  @override
  _AddItemFormState get _value => super._value as _AddItemFormState;

  @override
  $Res call({
    Object name = freezed,
    Object price = freezed,
    Object discount = freezed,
    Object salePrice = freezed,
    Object qty = freezed,
    Object imageUrl = freezed,
    Object image = freezed,
    Object isAdding = freezed,
    Object isAdded = freezed,
    Object submitFailureOrSucces = freezed,
  }) {
    return _then(_AddItemFormState(
      name: name == freezed ? _value.name : name as String,
      price: price == freezed ? _value.price : price as int,
      discount: discount == freezed ? _value.discount : discount as int,
      salePrice: salePrice == freezed ? _value.salePrice : salePrice as int,
      qty: qty == freezed ? _value.qty : qty as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      image: image == freezed ? _value.image : image as File,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      isAdded: isAdded == freezed ? _value.isAdded : isAdded as bool,
      submitFailureOrSucces: submitFailureOrSucces == freezed
          ? _value.submitFailureOrSucces
          : submitFailureOrSucces as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AddItemFormState implements _AddItemFormState {
  const _$_AddItemFormState(
      {@required this.name,
      @required this.price,
      @required this.discount,
      @required this.salePrice,
      @required this.qty,
      @required this.imageUrl,
      @required this.image,
      @required this.isAdding,
      @required this.isAdded,
      @required this.submitFailureOrSucces})
      : assert(name != null),
        assert(price != null),
        assert(discount != null),
        assert(salePrice != null),
        assert(qty != null),
        assert(imageUrl != null),
        assert(image != null),
        assert(isAdding != null),
        assert(isAdded != null),
        assert(submitFailureOrSucces != null);

  @override
  final String name;
  @override
  final int price;
  @override
  final int discount;
  @override
  final int salePrice;
  @override
  final int qty;
  @override
  final String imageUrl;
  @override
  final File image;
  @override
  final bool isAdding;
  @override
  final bool isAdded;
  @override
  final Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces;

  @override
  String toString() {
    return 'AddItemFormState(name: $name, price: $price, discount: $discount, salePrice: $salePrice, qty: $qty, imageUrl: $imageUrl, image: $image, isAdding: $isAdding, isAdded: $isAdded, submitFailureOrSucces: $submitFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddItemFormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.salePrice, salePrice) ||
                const DeepCollectionEquality()
                    .equals(other.salePrice, salePrice)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.isAdding, isAdding) ||
                const DeepCollectionEquality()
                    .equals(other.isAdding, isAdding)) &&
            (identical(other.isAdded, isAdded) ||
                const DeepCollectionEquality()
                    .equals(other.isAdded, isAdded)) &&
            (identical(other.submitFailureOrSucces, submitFailureOrSucces) ||
                const DeepCollectionEquality().equals(
                    other.submitFailureOrSucces, submitFailureOrSucces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(salePrice) ^
      const DeepCollectionEquality().hash(qty) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(isAdding) ^
      const DeepCollectionEquality().hash(isAdded) ^
      const DeepCollectionEquality().hash(submitFailureOrSucces);

  @JsonKey(ignore: true)
  @override
  _$AddItemFormStateCopyWith<_AddItemFormState> get copyWith =>
      __$AddItemFormStateCopyWithImpl<_AddItemFormState>(this, _$identity);
}

abstract class _AddItemFormState implements AddItemFormState {
  const factory _AddItemFormState(
          {@required
              String name,
          @required
              int price,
          @required
              int discount,
          @required
              int salePrice,
          @required
              int qty,
          @required
              String imageUrl,
          @required
              File image,
          @required
              bool isAdding,
          @required
              bool isAdded,
          @required
              Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces}) =
      _$_AddItemFormState;

  @override
  String get name;
  @override
  int get price;
  @override
  int get discount;
  @override
  int get salePrice;
  @override
  int get qty;
  @override
  String get imageUrl;
  @override
  File get image;
  @override
  bool get isAdding;
  @override
  bool get isAdded;
  @override
  Option<Either<FirestoreFailure, Unit>> get submitFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$AddItemFormStateCopyWith<_AddItemFormState> get copyWith;
}
