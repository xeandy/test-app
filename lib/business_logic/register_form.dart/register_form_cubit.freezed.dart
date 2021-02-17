// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

// ignore: unused_element
  _RegisterFormState call(
      {@required Email email,
      @required Password password,
      @required UserName userName,
      @required PhoneNumber phoneNumber,
      @required ConfirmPassword confirmPassword,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _RegisterFormState(
      email: email,
      password: password,
      userName: userName,
      phoneNumber: phoneNumber,
      confirmPassword: confirmPassword,
      isSubmitting: isSubmitting,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterFormState = _$RegisterFormStateTearOff();

/// @nodoc
mixin _$RegisterFormState {
  Email get email;
  Password get password;
  UserName get userName;
  PhoneNumber get phoneNumber;
  ConfirmPassword get confirmPassword;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      UserName userName,
      PhoneNumber phoneNumber,
      ConfirmPassword confirmPassword,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object userName = freezed,
    Object phoneNumber = freezed,
    Object confirmPassword = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      userName: userName == freezed ? _value.userName : userName as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as ConfirmPassword,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      UserName userName,
      PhoneNumber phoneNumber,
      ConfirmPassword confirmPassword,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object userName = freezed,
    Object phoneNumber = freezed,
    Object confirmPassword = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_RegisterFormState(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      userName: userName == freezed ? _value.userName : userName as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as ConfirmPassword,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {@required this.email,
      @required this.password,
      @required this.userName,
      @required this.phoneNumber,
      @required this.confirmPassword,
      @required this.isSubmitting,
      @required this.authFailureOrSuccess})
      : assert(email != null),
        assert(password != null),
        assert(userName != null),
        assert(phoneNumber != null),
        assert(confirmPassword != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccess != null);

  @override
  final Email email;
  @override
  final Password password;
  @override
  final UserName userName;
  @override
  final PhoneNumber phoneNumber;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'RegisterFormState(email: $email, password: $password, userName: $userName, phoneNumber: $phoneNumber, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
          {@required Email email,
          @required Password password,
          @required UserName userName,
          @required PhoneNumber phoneNumber,
          @required ConfirmPassword confirmPassword,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_RegisterFormState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  UserName get userName;
  @override
  PhoneNumber get phoneNumber;
  @override
  ConfirmPassword get confirmPassword;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith;
}
