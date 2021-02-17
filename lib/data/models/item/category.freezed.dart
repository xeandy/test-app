// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

// ignore: unused_element
  _Category call(
      {@required CategoryName categoryName, @required UniqueId categoryID}) {
    return _Category(
      categoryName: categoryName,
      categoryID: categoryID,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  CategoryName get categoryName;
  UniqueId get categoryID;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call({CategoryName categoryName, UniqueId categoryID});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object categoryName = freezed,
    Object categoryID = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as CategoryName,
      categoryID:
          categoryID == freezed ? _value.categoryID : categoryID as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call({CategoryName categoryName, UniqueId categoryID});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object categoryName = freezed,
    Object categoryID = freezed,
  }) {
    return _then(_Category(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as CategoryName,
      categoryID:
          categoryID == freezed ? _value.categoryID : categoryID as UniqueId,
    ));
  }
}

/// @nodoc
class _$_Category implements _Category {
  const _$_Category({@required this.categoryName, @required this.categoryID})
      : assert(categoryName != null),
        assert(categoryID != null);

  @override
  final CategoryName categoryName;
  @override
  final UniqueId categoryID;

  @override
  String toString() {
    return 'Category(categoryName: $categoryName, categoryID: $categoryID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.categoryID, categoryID) ||
                const DeepCollectionEquality()
                    .equals(other.categoryID, categoryID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(categoryID);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);
}

abstract class _Category implements Category {
  const factory _Category(
      {@required CategoryName categoryName,
      @required UniqueId categoryID}) = _$_Category;

  @override
  CategoryName get categoryName;
  @override
  UniqueId get categoryID;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith;
}
