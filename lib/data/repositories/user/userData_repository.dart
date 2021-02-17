import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/user/userData.dart';
import 'package:test_app/data/repositories/user/i_userData_repository.dart';
import 'package:test_app/data/repositories/user/userData_DTO.dart';
import 'package:test_app/data/repositories/core/firestore_helppers.dart';

@LazySingleton(as: IUserDataRepository)
class UserDataRepository implements IUserDataRepository {
  final FirebaseFirestore firestore;

  UserDataRepository(this.firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> createUser(UserData userData) async {
    try {
      final userDoc = await firestore.userDocument();
      final userDataDTO =
          UserDataDTO.fromDomain(userData.copyWith(userId: userDoc.id));
      await userDoc.set(userDataDTO.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirestoreFailure, UserData>> fetchUserData() async* {
    final userDoc = await firestore.userDocument();
    yield* userDoc
        .snapshots()
        .map(
          (snapshot) => right<FirestoreFailure, UserData>(
            UserDataDTO.fromJson(snapshot.data()).toDomain(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    });
  }
}
