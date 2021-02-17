import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/auth/value_objects.dart';
import 'package:test_app/data/models/user/userData.dart';

part 'userData_DTO.freezed.dart';
part 'userData_DTO.g.dart';

@freezed
abstract class UserDataDTO with _$UserDataDTO {
  const UserDataDTO._();
  const factory UserDataDTO({
    @required String userName,
    @required String email,
    @required String phoneNumber,
    @required String userId,
    @JsonKey(ignore: false) String role,
  }) = _UserDataDTO;

  factory UserDataDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDataDTOFromJson(json);

  factory UserDataDTO.fromDomain(UserData userData) {
    return UserDataDTO(
      userName: userData.userName.getOrCrash(),
      email: userData.email.getOrCrash(),
      phoneNumber: userData.phoneNumber.getOrCrash(),
      userId: userData.userId,
      role: userData.role,
    );
  }

  UserData toDomain() {
    return UserData(
      userName: UserName(userName),
      email: Email(email),
      phoneNumber: PhoneNumber(phoneNumber),
      userId: userId,
      role: role,
    );
  }
}
