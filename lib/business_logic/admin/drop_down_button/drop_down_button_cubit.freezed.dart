// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'drop_down_button_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DropDownButtonStateTearOff {
  const _$DropDownButtonStateTearOff();

// ignore: unused_element
  _DropDownButtonState call(
      {List<Category> categories, FirestoreFailure categoryFailure}) {
    return _DropDownButtonState(
      categories: categories,
      categoryFailure: categoryFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DropDownButtonState = _$DropDownButtonStateTearOff();

/// @nodoc
mixin _$DropDownButtonState {
  List<Category> get categories;
  FirestoreFailure get categoryFailure;

  @JsonKey(ignore: true)
  $DropDownButtonStateCopyWith<DropDownButtonState> get copyWith;
}

/// @nodoc
abstract class $DropDownButtonStateCopyWith<$Res> {
  factory $DropDownButtonStateCopyWith(
          DropDownButtonState value, $Res Function(DropDownButtonState) then) =
      _$DropDownButtonStateCopyWithImpl<$Res>;
  $Res call({List<Category> categories, FirestoreFailure categoryFailure});

  $FirestoreFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class _$DropDownButtonStateCopyWithImpl<$Res>
    implements $DropDownButtonStateCopyWith<$Res> {
  _$DropDownButtonStateCopyWithImpl(this._value, this._then);

  final DropDownButtonState _value;
  // ignore: unused_field
  final $Res Function(DropDownButtonState) _then;

  @override
  $Res call({
    Object categories = freezed,
    Object categoryFailure = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
      categoryFailure: categoryFailure == freezed
          ? _value.categoryFailure
          : categoryFailure as FirestoreFailure,
    ));
  }

  @override
  $FirestoreFailureCopyWith<$Res> get categoryFailure {
    if (_value.categoryFailure == null) {
      return null;
    }
    return $FirestoreFailureCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc
abstract class _$DropDownButtonStateCopyWith<$Res>
    implements $DropDownButtonStateCopyWith<$Res> {
  factory _$DropDownButtonStateCopyWith(_DropDownButtonState value,
          $Res Function(_DropDownButtonState) then) =
      __$DropDownButtonStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Category> categories, FirestoreFailure categoryFailure});

  @override
  $FirestoreFailureCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$DropDownButtonStateCopyWithImpl<$Res>
    extends _$DropDownButtonStateCopyWithImpl<$Res>
    implements _$DropDownButtonStateCopyWith<$Res> {
  __$DropDownButtonStateCopyWithImpl(
      _DropDownButtonState _value, $Res Function(_DropDownButtonState) _then)
      : super(_value, (v) => _then(v as _DropDownButtonState));

  @override
  _DropDownButtonState get _value => super._value as _DropDownButtonState;

  @override
  $Res call({
    Object categories = freezed,
    Object categoryFailure = freezed,
  }) {
    return _then(_DropDownButtonState(
      categories: categories == freezed
          ? _value.categories
          : categories as List<Category>,
      categoryFailure: categoryFailure == freezed
          ? _value.categoryFailure
          : categoryFailure as FirestoreFailure,
    ));
  }
}

/// @nodoc
class _$_DropDownButtonState implements _DropDownButtonState {
  const _$_DropDownButtonState({this.categories, this.categoryFailure});

  @override
  final List<Category> categories;
  @override
  final FirestoreFailure categoryFailure;

  @override
  String toString() {
    return 'DropDownButtonState(categories: $categories, categoryFailure: $categoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DropDownButtonState &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.categoryFailure, categoryFailure) ||
                const DeepCollectionEquality()
                    .equals(other.categoryFailure, categoryFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(categoryFailure);

  @JsonKey(ignore: true)
  @override
  _$DropDownButtonStateCopyWith<_DropDownButtonState> get copyWith =>
      __$DropDownButtonStateCopyWithImpl<_DropDownButtonState>(
          this, _$identity);
}

abstract class _DropDownButtonState implements DropDownButtonState {
  const factory _DropDownButtonState(
      {List<Category> categories,
      FirestoreFailure categoryFailure}) = _$_DropDownButtonState;

  @override
  List<Category> get categories;
  @override
  FirestoreFailure get categoryFailure;
  @override
  @JsonKey(ignore: true)
  _$DropDownButtonStateCopyWith<_DropDownButtonState> get copyWith;
}
