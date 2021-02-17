// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
class _$CategoryDTOTearOff {
  const _$CategoryDTOTearOff();

// ignore: unused_element
  _CategoryDTO call(
      {@required String categoryName, @required String categoryID}) {
    return _CategoryDTO(
      categoryName: categoryName,
      categoryID: categoryID,
    );
  }

// ignore: unused_element
  CategoryDTO fromJson(Map<String, Object> json) {
    return CategoryDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryDTO = _$CategoryDTOTearOff();

/// @nodoc
mixin _$CategoryDTO {
  String get categoryName;
  String get categoryID;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res>;
  $Res call({String categoryName, String categoryID});
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res> implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  final CategoryDTO _value;
  // ignore: unused_field
  final $Res Function(CategoryDTO) _then;

  @override
  $Res call({
    Object categoryName = freezed,
    Object categoryID = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as String,
      categoryID:
          categoryID == freezed ? _value.categoryID : categoryID as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryDTOCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$CategoryDTOCopyWith(
          _CategoryDTO value, $Res Function(_CategoryDTO) then) =
      __$CategoryDTOCopyWithImpl<$Res>;
  @override
  $Res call({String categoryName, String categoryID});
}

/// @nodoc
class __$CategoryDTOCopyWithImpl<$Res> extends _$CategoryDTOCopyWithImpl<$Res>
    implements _$CategoryDTOCopyWith<$Res> {
  __$CategoryDTOCopyWithImpl(
      _CategoryDTO _value, $Res Function(_CategoryDTO) _then)
      : super(_value, (v) => _then(v as _CategoryDTO));

  @override
  _CategoryDTO get _value => super._value as _CategoryDTO;

  @override
  $Res call({
    Object categoryName = freezed,
    Object categoryID = freezed,
  }) {
    return _then(_CategoryDTO(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as String,
      categoryID:
          categoryID == freezed ? _value.categoryID : categoryID as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CategoryDTO extends _CategoryDTO {
  const _$_CategoryDTO({@required this.categoryName, @required this.categoryID})
      : assert(categoryName != null),
        assert(categoryID != null),
        super._();

  factory _$_CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryDTOFromJson(json);

  @override
  final String categoryName;
  @override
  final String categoryID;

  @override
  String toString() {
    return 'CategoryDTO(categoryName: $categoryName, categoryID: $categoryID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryDTO &&
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
  _$CategoryDTOCopyWith<_CategoryDTO> get copyWith =>
      __$CategoryDTOCopyWithImpl<_CategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryDTOToJson(this);
  }
}

abstract class _CategoryDTO extends CategoryDTO {
  const _CategoryDTO._() : super._();
  const factory _CategoryDTO(
      {@required String categoryName,
      @required String categoryID}) = _$_CategoryDTO;

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTO.fromJson;

  @override
  String get categoryName;
  @override
  String get categoryID;
  @override
  @JsonKey(ignore: true)
  _$CategoryDTOCopyWith<_CategoryDTO> get copyWith;
}
