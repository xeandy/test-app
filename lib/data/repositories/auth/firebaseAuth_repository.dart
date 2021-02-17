import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/auth/auth_failure.dart';
import 'package:test_app/data/models/auth/user.dart';
import 'package:test_app/data/models/auth/value_objects.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';
import 'package:test_app/data/repositories/auth/firebaseUser_domain.dart';

@LazySingleton(as: IFirebaseAuthRepository)
class FirebaseAuthFacade implements IFirebaseAuthRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(this._firebaseAuth);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required Email email,
    @required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);

      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlredyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required Email email,
    @required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<AppUser>> getUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signout() async {
    await _firebaseAuth.signOut();
  }
}
