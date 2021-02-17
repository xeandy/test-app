// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required String invalidEmail}) {
    return InvalidEmail<T>(
      invalidEmail: invalidEmail,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required String shortPsw}) {
    return ShortPassword<T>(
      shortPsw: shortPsw,
    );
  }

// ignore: unused_element
  InvalidPhoneNumber<T> invalidPhoneNumber<T>(
      {@required String invalidPhoneNumber}) {
    return InvalidPhoneNumber<T>(
      invalidPhoneNumber: invalidPhoneNumber,
    );
  }

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required String exceedingLength, @required int maxLength}) {
    return ExceedingLength<T>(
      exceedingLength: exceedingLength,
      maxLength: maxLength,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required String empty}) {
    return Empty<T>(
      empty: empty,
    );
  }

// ignore: unused_element
  PasswordNotMatch<T> passwordNotMatch<T>({@required String passwordNotMatch}) {
    return PasswordNotMatch<T>(
      passwordNotMatch: passwordNotMatch,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String invalidEmail});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object invalidEmail = freezed,
  }) {
    return _then(InvalidEmail<T>(
      invalidEmail: invalidEmail == freezed
          ? _value.invalidEmail
          : invalidEmail as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.invalidEmail})
      : assert(invalidEmail != null);

  @override
  final String invalidEmail;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(invalidEmail: $invalidEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.invalidEmail, invalidEmail) ||
                const DeepCollectionEquality()
                    .equals(other.invalidEmail, invalidEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidEmail);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return invalidEmail(this.invalidEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this.invalidEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String invalidEmail}) =
      _$InvalidEmail<T>;

  String get invalidEmail;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String shortPsw});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object shortPsw = freezed,
  }) {
    return _then(ShortPassword<T>(
      shortPsw: shortPsw == freezed ? _value.shortPsw : shortPsw as String,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.shortPsw}) : assert(shortPsw != null);

  @override
  final String shortPsw;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(shortPsw: $shortPsw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.shortPsw, shortPsw) ||
                const DeepCollectionEquality()
                    .equals(other.shortPsw, shortPsw)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shortPsw);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return shortPassword(shortPsw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(shortPsw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required String shortPsw}) = _$ShortPassword<T>;

  String get shortPsw;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  $Res call({String invalidPhoneNumber});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object invalidPhoneNumber = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      invalidPhoneNumber: invalidPhoneNumber == freezed
          ? _value.invalidPhoneNumber
          : invalidPhoneNumber as String,
    ));
  }
}

/// @nodoc
class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({@required this.invalidPhoneNumber})
      : assert(invalidPhoneNumber != null);

  @override
  final String invalidPhoneNumber;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(invalidPhoneNumber: $invalidPhoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumber<T> &&
            (identical(other.invalidPhoneNumber, invalidPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.invalidPhoneNumber, invalidPhoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(invalidPhoneNumber);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return invalidPhoneNumber(this.invalidPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this.invalidPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory InvalidPhoneNumber({@required String invalidPhoneNumber}) =
      _$InvalidPhoneNumber<T>;

  String get invalidPhoneNumber;
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({String exceedingLength, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object exceedingLength = freezed,
    Object maxLength = freezed,
  }) {
    return _then(ExceedingLength<T>(
      exceedingLength: exceedingLength == freezed
          ? _value.exceedingLength
          : exceedingLength as String,
      maxLength: maxLength == freezed ? _value.maxLength : maxLength as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength(
      {@required this.exceedingLength, @required this.maxLength})
      : assert(exceedingLength != null),
        assert(maxLength != null);

  @override
  final String exceedingLength;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(exceedingLength: $exceedingLength, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.exceedingLength, exceedingLength) ||
                const DeepCollectionEquality()
                    .equals(other.exceedingLength, exceedingLength)) &&
            (identical(other.maxLength, maxLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxLength, maxLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exceedingLength) ^
      const DeepCollectionEquality().hash(maxLength);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return exceedingLength(this.exceedingLength, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this.exceedingLength, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {@required String exceedingLength,
      @required int maxLength}) = _$ExceedingLength<T>;

  String get exceedingLength;
  int get maxLength;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({String empty});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object empty = freezed,
  }) {
    return _then(Empty<T>(
      empty: empty == freezed ? _value.empty : empty as String,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.empty}) : assert(empty != null);

  @override
  final String empty;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.empty, empty) ||
                const DeepCollectionEquality().equals(other.empty, empty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(empty);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return empty(this.empty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this.empty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required String empty}) = _$Empty<T>;

  String get empty;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $PasswordNotMatchCopyWith<T, $Res> {
  factory $PasswordNotMatchCopyWith(
          PasswordNotMatch<T> value, $Res Function(PasswordNotMatch<T>) then) =
      _$PasswordNotMatchCopyWithImpl<T, $Res>;
  $Res call({String passwordNotMatch});
}

/// @nodoc
class _$PasswordNotMatchCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PasswordNotMatchCopyWith<T, $Res> {
  _$PasswordNotMatchCopyWithImpl(
      PasswordNotMatch<T> _value, $Res Function(PasswordNotMatch<T>) _then)
      : super(_value, (v) => _then(v as PasswordNotMatch<T>));

  @override
  PasswordNotMatch<T> get _value => super._value as PasswordNotMatch<T>;

  @override
  $Res call({
    Object passwordNotMatch = freezed,
  }) {
    return _then(PasswordNotMatch<T>(
      passwordNotMatch: passwordNotMatch == freezed
          ? _value.passwordNotMatch
          : passwordNotMatch as String,
    ));
  }
}

/// @nodoc
class _$PasswordNotMatch<T> implements PasswordNotMatch<T> {
  const _$PasswordNotMatch({@required this.passwordNotMatch})
      : assert(passwordNotMatch != null);

  @override
  final String passwordNotMatch;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordNotMatch(passwordNotMatch: $passwordNotMatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordNotMatch<T> &&
            (identical(other.passwordNotMatch, passwordNotMatch) ||
                const DeepCollectionEquality()
                    .equals(other.passwordNotMatch, passwordNotMatch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passwordNotMatch);

  @JsonKey(ignore: true)
  @override
  $PasswordNotMatchCopyWith<T, PasswordNotMatch<T>> get copyWith =>
      _$PasswordNotMatchCopyWithImpl<T, PasswordNotMatch<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String invalidEmail),
    @required TResult shortPassword(String shortPsw),
    @required TResult invalidPhoneNumber(String invalidPhoneNumber),
    @required TResult exceedingLength(String exceedingLength, int maxLength),
    @required TResult empty(String empty),
    @required TResult passwordNotMatch(String passwordNotMatch),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return passwordNotMatch(this.passwordNotMatch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String invalidEmail),
    TResult shortPassword(String shortPsw),
    TResult invalidPhoneNumber(String invalidPhoneNumber),
    TResult exceedingLength(String exceedingLength, int maxLength),
    TResult empty(String empty),
    TResult passwordNotMatch(String passwordNotMatch),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordNotMatch != null) {
      return passwordNotMatch(this.passwordNotMatch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult shortPassword(ShortPassword<T> value),
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult exceedingLength(ExceedingLength<T> value),
    @required TResult empty(Empty<T> value),
    @required TResult passwordNotMatch(PasswordNotMatch<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhoneNumber != null);
    assert(exceedingLength != null);
    assert(empty != null);
    assert(passwordNotMatch != null);
    return passwordNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult shortPassword(ShortPassword<T> value),
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult exceedingLength(ExceedingLength<T> value),
    TResult empty(Empty<T> value),
    TResult passwordNotMatch(PasswordNotMatch<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordNotMatch != null) {
      return passwordNotMatch(this);
    }
    return orElse();
  }
}

abstract class PasswordNotMatch<T> implements ValueFailure<T> {
  const factory PasswordNotMatch({@required String passwordNotMatch}) =
      _$PasswordNotMatch<T>;

  String get passwordNotMatch;
  @JsonKey(ignore: true)
  $PasswordNotMatchCopyWith<T, PasswordNotMatch<T>> get copyWith;
}
