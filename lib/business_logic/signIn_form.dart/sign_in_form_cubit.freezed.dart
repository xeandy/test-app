// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required Email email,
      @required Password password,
      @required bool isSubmitting,
      @required bool showErrorMessage,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) {
    return _SignInFormState(
      email: email,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  Email get email;
  Password get password;
  bool get isSubmitting;
  bool get showErrorMessage;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessage = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessage = freezed,
    Object authFailureOrSuccess = freezed,
  }) {
    return _then(_SignInFormState(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.email,
      @required this.password,
      @required this.isSubmitting,
      @required this.showErrorMessage,
      @required this.authFailureOrSuccess})
      : assert(email != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(showErrorMessage != null),
        assert(authFailureOrSuccess != null);

  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignInFormState(email: $email, password: $password, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required Email email,
          @required Password password,
          @required bool isSubmitting,
          @required bool showErrorMessage,
          @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _$_SignInFormState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
