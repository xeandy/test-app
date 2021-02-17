import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IFirebaseAuthRepository firebaseAuthRepository;

  AuthCubit(this.firebaseAuthRepository) : super(AuthState.initial());

  Future<void> checkAuthRequest() async {
    final userOption = await firebaseAuthRepository.getUser();
    emit(
      userOption.fold(
        () => AuthState.unauthenticated(),
        (_) => AuthState.authenticated(),
      ),
    );
  }

  Future<void> signOut() async {
    await firebaseAuthRepository.signout();
    emit(AuthState.unauthenticated());
  }
}
