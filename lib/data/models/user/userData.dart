import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/auth/value_objects.dart';

part 'userData.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @required UserName userName,
    @required Email email,
    @required PhoneNumber phoneNumber,
    @required String userId,
    @required String role,
  }) = _UserData;

  factory UserData.empty() => UserData(
        userName: UserName(''),
        email: Email(''),
        phoneNumber: PhoneNumber(''),
        userId: '',
        role: '',
      );
}
