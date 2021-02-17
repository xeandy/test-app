// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'userData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      {@required UserName userName,
      @required Email email,
      @required PhoneNumber phoneNumber,
      @required String userId,
      @required String role}) {
    return _UserData(
      userName: userName,
      email: email,
      phoneNumber: phoneNumber,
      userId: userId,
      role: role,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  UserName get userName;
  Email get email;
  PhoneNumber get phoneNumber;
  String get userId;
  String get role;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {UserName userName,
      Email email,
      PhoneNumber phoneNumber,
      String userId,
      String role});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object userId = freezed,
    Object role = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as UserName,
      email: email == freezed ? _value.email : email as Email,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      userId: userId == freezed ? _value.userId : userId as String,
      role: role == freezed ? _value.role : role as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserName userName,
      Email email,
      PhoneNumber phoneNumber,
      String userId,
      String role});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object userName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object userId = freezed,
    Object role = freezed,
  }) {
    return _then(_UserData(
      userName: userName == freezed ? _value.userName : userName as UserName,
      email: email == freezed ? _value.email : email as Email,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      userId: userId == freezed ? _value.userId : userId as String,
      role: role == freezed ? _value.role : role as String,
    ));
  }
}

/// @nodoc
class _$_UserData implements _UserData {
  const _$_UserData(
      {@required this.userName,
      @required this.email,
      @required this.phoneNumber,
      @required this.userId,
      @required this.role})
      : assert(userName != null),
        assert(email != null),
        assert(phoneNumber != null),
        assert(userId != null),
        assert(role != null);

  @override
  final UserName userName;
  @override
  final Email email;
  @override
  final PhoneNumber phoneNumber;
  @override
  final String userId;
  @override
  final String role;

  @override
  String toString() {
    return 'UserData(userName: $userName, email: $email, phoneNumber: $phoneNumber, userId: $userId, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@required UserName userName,
      @required Email email,
      @required PhoneNumber phoneNumber,
      @required String userId,
      @required String role}) = _$_UserData;

  @override
  UserName get userName;
  @override
  Email get email;
  @override
  PhoneNumber get phoneNumber;
  @override
  String get userId;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith;
}
