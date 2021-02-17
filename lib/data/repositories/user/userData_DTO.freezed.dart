// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'userData_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDataDTO _$UserDataDTOFromJson(Map<String, dynamic> json) {
  return _UserDataDTO.fromJson(json);
}

/// @nodoc
class _$UserDataDTOTearOff {
  const _$UserDataDTOTearOff();

// ignore: unused_element
  _UserDataDTO call(
      {@required String userName,
      @required String email,
      @required String phoneNumber,
      @required String userId,
      @JsonKey(ignore: false) String role}) {
    return _UserDataDTO(
      userName: userName,
      email: email,
      phoneNumber: phoneNumber,
      userId: userId,
      role: role,
    );
  }

// ignore: unused_element
  UserDataDTO fromJson(Map<String, Object> json) {
    return UserDataDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDataDTO = _$UserDataDTOTearOff();

/// @nodoc
mixin _$UserDataDTO {
  String get userName;
  String get email;
  String get phoneNumber;
  String get userId;
  @JsonKey(ignore: false)
  String get role;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDataDTOCopyWith<UserDataDTO> get copyWith;
}

/// @nodoc
abstract class $UserDataDTOCopyWith<$Res> {
  factory $UserDataDTOCopyWith(
          UserDataDTO value, $Res Function(UserDataDTO) then) =
      _$UserDataDTOCopyWithImpl<$Res>;
  $Res call(
      {String userName,
      String email,
      String phoneNumber,
      String userId,
      @JsonKey(ignore: false) String role});
}

/// @nodoc
class _$UserDataDTOCopyWithImpl<$Res> implements $UserDataDTOCopyWith<$Res> {
  _$UserDataDTOCopyWithImpl(this._value, this._then);

  final UserDataDTO _value;
  // ignore: unused_field
  final $Res Function(UserDataDTO) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object userId = freezed,
    Object role = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      userId: userId == freezed ? _value.userId : userId as String,
      role: role == freezed ? _value.role : role as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataDTOCopyWith<$Res>
    implements $UserDataDTOCopyWith<$Res> {
  factory _$UserDataDTOCopyWith(
          _UserDataDTO value, $Res Function(_UserDataDTO) then) =
      __$UserDataDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userName,
      String email,
      String phoneNumber,
      String userId,
      @JsonKey(ignore: false) String role});
}

/// @nodoc
class __$UserDataDTOCopyWithImpl<$Res> extends _$UserDataDTOCopyWithImpl<$Res>
    implements _$UserDataDTOCopyWith<$Res> {
  __$UserDataDTOCopyWithImpl(
      _UserDataDTO _value, $Res Function(_UserDataDTO) _then)
      : super(_value, (v) => _then(v as _UserDataDTO));

  @override
  _UserDataDTO get _value => super._value as _UserDataDTO;

  @override
  $Res call({
    Object userName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object userId = freezed,
    Object role = freezed,
  }) {
    return _then(_UserDataDTO(
      userName: userName == freezed ? _value.userName : userName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      userId: userId == freezed ? _value.userId : userId as String,
      role: role == freezed ? _value.role : role as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDataDTO extends _UserDataDTO {
  const _$_UserDataDTO(
      {@required this.userName,
      @required this.email,
      @required this.phoneNumber,
      @required this.userId,
      @JsonKey(ignore: false) this.role})
      : assert(userName != null),
        assert(email != null),
        assert(phoneNumber != null),
        assert(userId != null),
        super._();

  factory _$_UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataDTOFromJson(json);

  @override
  final String userName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String userId;
  @override
  @JsonKey(ignore: false)
  final String role;

  @override
  String toString() {
    return 'UserDataDTO(userName: $userName, email: $email, phoneNumber: $phoneNumber, userId: $userId, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDataDTO &&
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
  _$UserDataDTOCopyWith<_UserDataDTO> get copyWith =>
      __$UserDataDTOCopyWithImpl<_UserDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataDTOToJson(this);
  }
}

abstract class _UserDataDTO extends UserDataDTO {
  const _UserDataDTO._() : super._();
  const factory _UserDataDTO(
      {@required String userName,
      @required String email,
      @required String phoneNumber,
      @required String userId,
      @JsonKey(ignore: false) String role}) = _$_UserDataDTO;

  factory _UserDataDTO.fromJson(Map<String, dynamic> json) =
      _$_UserDataDTO.fromJson;

  @override
  String get userName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get userId;
  @override
  @JsonKey(ignore: false)
  String get role;
  @override
  @JsonKey(ignore: true)
  _$UserDataDTOCopyWith<_UserDataDTO> get copyWith;
}
