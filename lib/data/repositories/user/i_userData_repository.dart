
import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/user/userData.dart';

abstract class IUserDataRepository {
  Stream<Either<FirestoreFailure, UserData>> fetchUserData();
  Future<Either<FirestoreFailure, Unit>> createUser(UserData userData);
}
