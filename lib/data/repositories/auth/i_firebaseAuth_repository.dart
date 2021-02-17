import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/data/models/auth/auth_failure.dart';
import 'package:test_app/data/models/auth/user.dart';
import 'package:test_app/data/models/auth/value_objects.dart';

abstract class IFirebaseAuthRepository {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required Email email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required Email email,
    @required Password password,
  });

  Future<Option<AppUser>> getUser();
  Future<void> signout();
}
