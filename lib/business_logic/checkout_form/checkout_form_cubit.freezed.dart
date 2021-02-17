// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'checkout_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CheckoutFormStateTearOff {
  const _$CheckoutFormStateTearOff();

// ignore: unused_element
  _CheckoutFormState call(
      {@required OrderData order,
      @required Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces}) {
    return _CheckoutFormState(
      order: order,
      submitFailureOrSucces: submitFailureOrSucces,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CheckoutFormState = _$CheckoutFormStateTearOff();

/// @nodoc
mixin _$CheckoutFormState {
  OrderData get order;
  Option<Either<FirestoreFailure, Unit>> get submitFailureOrSucces;

  @JsonKey(ignore: true)
  $CheckoutFormStateCopyWith<CheckoutFormState> get copyWith;
}

/// @nodoc
abstract class $CheckoutFormStateCopyWith<$Res> {
  factory $CheckoutFormStateCopyWith(
          CheckoutFormState value, $Res Function(CheckoutFormState) then) =
      _$CheckoutFormStateCopyWithImpl<$Res>;
  $Res call(
      {OrderData order,
      Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces});

  $OrderDataCopyWith<$Res> get order;
}

/// @nodoc
class _$CheckoutFormStateCopyWithImpl<$Res>
    implements $CheckoutFormStateCopyWith<$Res> {
  _$CheckoutFormStateCopyWithImpl(this._value, this._then);

  final CheckoutFormState _value;
  // ignore: unused_field
  final $Res Function(CheckoutFormState) _then;

  @override
  $Res call({
    Object order = freezed,
    Object submitFailureOrSucces = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed ? _value.order : order as OrderData,
      submitFailureOrSucces: submitFailureOrSucces == freezed
          ? _value.submitFailureOrSucces
          : submitFailureOrSucces as Option<Either<FirestoreFailure, Unit>>,
    ));
  }

  @override
  $OrderDataCopyWith<$Res> get order {
    if (_value.order == null) {
      return null;
    }
    return $OrderDataCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc
abstract class _$CheckoutFormStateCopyWith<$Res>
    implements $CheckoutFormStateCopyWith<$Res> {
  factory _$CheckoutFormStateCopyWith(
          _CheckoutFormState value, $Res Function(_CheckoutFormState) then) =
      __$CheckoutFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {OrderData order,
      Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces});

  @override
  $OrderDataCopyWith<$Res> get order;
}

/// @nodoc
class __$CheckoutFormStateCopyWithImpl<$Res>
    extends _$CheckoutFormStateCopyWithImpl<$Res>
    implements _$CheckoutFormStateCopyWith<$Res> {
  __$CheckoutFormStateCopyWithImpl(
      _CheckoutFormState _value, $Res Function(_CheckoutFormState) _then)
      : super(_value, (v) => _then(v as _CheckoutFormState));

  @override
  _CheckoutFormState get _value => super._value as _CheckoutFormState;

  @override
  $Res call({
    Object order = freezed,
    Object submitFailureOrSucces = freezed,
  }) {
    return _then(_CheckoutFormState(
      order: order == freezed ? _value.order : order as OrderData,
      submitFailureOrSucces: submitFailureOrSucces == freezed
          ? _value.submitFailureOrSucces
          : submitFailureOrSucces as Option<Either<FirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CheckoutFormState implements _CheckoutFormState {
  const _$_CheckoutFormState(
      {@required this.order, @required this.submitFailureOrSucces})
      : assert(order != null),
        assert(submitFailureOrSucces != null);

  @override
  final OrderData order;
  @override
  final Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces;

  @override
  String toString() {
    return 'CheckoutFormState(order: $order, submitFailureOrSucces: $submitFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckoutFormState &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.submitFailureOrSucces, submitFailureOrSucces) ||
                const DeepCollectionEquality().equals(
                    other.submitFailureOrSucces, submitFailureOrSucces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(submitFailureOrSucces);

  @JsonKey(ignore: true)
  @override
  _$CheckoutFormStateCopyWith<_CheckoutFormState> get copyWith =>
      __$CheckoutFormStateCopyWithImpl<_CheckoutFormState>(this, _$identity);
}

abstract class _CheckoutFormState implements CheckoutFormState {
  const factory _CheckoutFormState(
          {@required
              OrderData order,
          @required
              Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces}) =
      _$_CheckoutFormState;

  @override
  OrderData get order;
  @override
  Option<Either<FirestoreFailure, Unit>> get submitFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$CheckoutFormStateCopyWith<_CheckoutFormState> get copyWith;
}
