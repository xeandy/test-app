import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/auth/auth_failure.dart';
import 'package:test_app/data/models/auth/value_objects.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';

part 'sign_in_form_state.dart';
part 'sign_in_form_cubit.freezed.dart';

@injectable
class SignInFormCubit extends Cubit<SignInFormState> {
  final IFirebaseAuthRepository firebaseAuthRepository;
  SignInFormCubit(this.firebaseAuthRepository)
      : super(SignInFormState.initial());

  void emailChanged(String email) {
    emit(
      state.copyWith(
        email: Email(email),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void passwordChanged(String password) {
    emit(
      state.copyWith(
        password: Password(password),
        authFailureOrSuccess: none(),
      ),
    );
  }

  Future<void> signInWithEmailAndPassword() async {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
      failureOrSuccess =
          await firebaseAuthRepository.signInWithEmailAndPassword(
              email: state.email, password: state.password);
    }
    emit(
      state.copyWith(
        showErrorMessage: true,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }
}
