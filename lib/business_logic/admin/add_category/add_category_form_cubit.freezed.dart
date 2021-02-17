// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_category_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddCategoryFormStateTearOff {
  const _$AddCategoryFormStateTearOff();

// ignore: unused_element
  _AddCategoryFormState call(
      {@required Category category,
      @required Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces}) {
    return _AddCategoryFormState(
      category: category,
      submitFailureOrSucces: submitFailureOrSucces,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddCategoryFormState = _$AddCategoryFormStateTearOff();

/// @nodoc
mixin _$AddCategoryFormState {
  Category get category;
  Option<Either<FirestoreFailure, Unit>> get submitFailureOrSucces;

  @JsonKey(ignore: true)
  $AddCategoryFormStateCopyWith<AddCategoryFormState> get copyWith;
}

/// @nodoc
abstract class $AddCategoryFormStateCopyWith<$Res> {
  factory $AddCategoryFormStateCopyWith(AddCategoryFormState value,
          $Res Function(AddCategoryFormState) then) =
      _$AddCategoryFormStateCopyWithImpl<$Res>;
  $Res call(
      {Category category,
      Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$AddCategoryFormStateCopyWithImpl<$Res>
    implements $AddCategoryFormStateCopyWith<$Res> {
  _$AddCategoryFormStateCopyWithImpl(this._value, this._then);

  final AddCategoryFormState _value;
  // ignore: unused_field
  final $Res Function(AddCategoryFormState) _then;

  @override
  $Res call({
    Object category = freezed,
    Object submitFailureOrSucces = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed ? _value.category : category as Category,
      submitFailureOrSucces: submitFailureOrSucces == freezed
          ? _value.submitFailureOrSucces
          : submitFailureOrSucces as Option<Either<FirestoreFailure, Unit>>,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$AddCategoryFormStateCopyWith<$Res>
    implements $AddCategoryFormStateCopyWith<$Res> {
  factory _$AddCategoryFormStateCopyWith(_AddCategoryFormState value,
          $Res Function(_AddCategoryFormState) then) =
      __$AddCategoryFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Category category,
      Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$AddCategoryFormStateCopyWithImpl<$Res>
    extends _$AddCategoryFormStateCopyWithImpl<$Res>
    implements _$AddCategoryFormStateCopyWith<$Res> {
  __$AddCategoryFormStateCopyWithImpl(
      _AddCategoryFormState _value, $Res Function(_AddCategoryFormState) _then)
      : super(_value, (v) => _then(v as _AddCategoryFormState));

  @override
  _AddCategoryFormState get _value => super._value as _AddCategoryFormState;

  @override
  $Res call({
    Object category = freezed,
    Object submitFailureOrSucces = freezed,
  }) {
    return _then(_AddCategoryFormState(
      category: category == freezed ? _value.category : category as Category,
      submitFailureOrSucces: submitFailureOrSucces == freezed
          ? _value.submitFailureOrSucces
          : submitFailureOrSucces as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AddCategoryFormState implements _AddCategoryFormState {
  const _$_AddCategoryFormState(
      {@required this.category, @required this.submitFailureOrSucces})
      : assert(category != null),
        assert(submitFailureOrSucces != null);

  @override
  final Category category;
  @override
  final Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces;

  @override
  String toString() {
    return 'AddCategoryFormState(category: $category, submitFailureOrSucces: $submitFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCategoryFormState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.submitFailureOrSucces, submitFailureOrSucces) ||
                const DeepCollectionEquality().equals(
                    other.submitFailureOrSucces, submitFailureOrSucces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(submitFailureOrSucces);

  @JsonKey(ignore: true)
  @override
  _$AddCategoryFormStateCopyWith<_AddCategoryFormState> get copyWith =>
      __$AddCategoryFormStateCopyWithImpl<_AddCategoryFormState>(
          this, _$identity);
}

abstract class _AddCategoryFormState implements AddCategoryFormState {
  const factory _AddCategoryFormState(
          {@required
              Category category,
          @required
              Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces}) =
      _$_AddCategoryFormState;

  @override
  Category get category;
  @override
  Option<Either<FirestoreFailure, Unit>> get submitFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$AddCategoryFormStateCopyWith<_AddCategoryFormState> get copyWith;
}
