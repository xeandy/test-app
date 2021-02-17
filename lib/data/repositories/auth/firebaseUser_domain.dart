import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_app/data/models/auth/user.dart';
import 'package:test_app/data/models/core/value_object.dart';

extension FirebaseUserDomain on User {
  AppUser toDomain() {
    return AppUser(id: UniqueId.fromUniqueString(uid));
  }
}
