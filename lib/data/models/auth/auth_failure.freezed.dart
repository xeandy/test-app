// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  InvalidEmail invalidEmail() {
    return const InvalidEmail();
  }

// ignore: unused_element
  EmailAlredyInUse emailAlredyInUse() {
    return const EmailAlredyInUse();
  }

// ignore: unused_element
  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidEmail(),
    @required TResult emailAlredyInUse(),
    @required TResult invalidEmailAndPasswordCombination(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidEmail(),
    TResult emailAlredyInUse(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult emailAlredyInUse(EmailAlredyInUse value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidEmail(InvalidEmail value),
    TResult emailAlredyInUse(EmailAlredyInUse value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidEmail(),
    @required TResult emailAlredyInUse(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidEmail(),
    TResult emailAlredyInUse(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult emailAlredyInUse(EmailAlredyInUse value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidEmail(InvalidEmail value),
    TResult emailAlredyInUse(EmailAlredyInUse value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<$Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail value, $Res Function(InvalidEmail) then) =
      _$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailCopyWith<$Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail _value, $Res Function(InvalidEmail) _then)
      : super(_value, (v) => _then(v as InvalidEmail));

  @override
  InvalidEmail get _value => super._value as InvalidEmail;
}

/// @nodoc
class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'AuthFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidEmail(),
    @required TResult emailAlredyInUse(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidEmail(),
    TResult emailAlredyInUse(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult emailAlredyInUse(EmailAlredyInUse value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidEmail(InvalidEmail value),
    TResult emailAlredyInUse(EmailAlredyInUse value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements AuthFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class $EmailAlredyInUseCopyWith<$Res> {
  factory $EmailAlredyInUseCopyWith(
          EmailAlredyInUse value, $Res Function(EmailAlredyInUse) then) =
      _$EmailAlredyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlredyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlredyInUseCopyWith<$Res> {
  _$EmailAlredyInUseCopyWithImpl(
      EmailAlredyInUse _value, $Res Function(EmailAlredyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlredyInUse));

  @override
  EmailAlredyInUse get _value => super._value as EmailAlredyInUse;
}

/// @nodoc
class _$EmailAlredyInUse implements EmailAlredyInUse {
  const _$EmailAlredyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlredyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlredyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidEmail(),
    @required TResult emailAlredyInUse(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return emailAlredyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidEmail(),
    TResult emailAlredyInUse(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlredyInUse != null) {
      return emailAlredyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult emailAlredyInUse(EmailAlredyInUse value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return emailAlredyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidEmail(InvalidEmail value),
    TResult emailAlredyInUse(EmailAlredyInUse value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlredyInUse != null) {
      return emailAlredyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlredyInUse implements AuthFailure {
  const factory EmailAlredyInUse() = _$EmailAlredyInUse;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult serverError(),
    @required TResult invalidEmail(),
    @required TResult emailAlredyInUse(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult serverError(),
    TResult invalidEmail(),
    TResult emailAlredyInUse(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult serverError(ServerError value),
    @required TResult invalidEmail(InvalidEmail value),
    @required TResult emailAlredyInUse(EmailAlredyInUse value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(serverError != null);
    assert(invalidEmail != null);
    assert(emailAlredyInUse != null);
    assert(invalidEmailAndPasswordCombination != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult serverError(ServerError value),
    TResult invalidEmail(InvalidEmail value),
    TResult emailAlredyInUse(EmailAlredyInUse value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}
