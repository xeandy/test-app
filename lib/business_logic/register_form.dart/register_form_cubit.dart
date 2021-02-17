import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/auth/auth_failure.dart';
import 'package:test_app/data/models/auth/value_objects.dart';
import 'package:test_app/data/models/user/userData.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';
import 'package:test_app/data/repositories/user/i_userData_repository.dart';
import 'package:test_app/injection.dart';

part 'register_form_state.dart';
part 'register_form_cubit.freezed.dart';

@injectable
class RegisterFormCubit extends Cubit<RegisterFormState> {
  final IFirebaseAuthRepository firebaseAuthRepository;
  RegisterFormCubit(this.firebaseAuthRepository)
      : super(RegisterFormState.initial());

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

  void userNameChanged(String userName) {
    emit(
      state.copyWith(
        userName: UserName(userName),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void phoneNumberChanged(String phoneNumber) {
    emit(
      state.copyWith(
        phoneNumber: PhoneNumber(phoneNumber),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(
      state.copyWith(
        confirmPassword: ConfirmPassword(confirmPassword, state.password),
        authFailureOrSuccess: none(),
      ),
    );
  }

  Future<void> registerWithEmailAndPassword() async {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();
    final isUserNameValid = state.userName.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();

    if (isEmailValid &&
        isPasswordValid &&
        isPhoneNumberValid &&
        isUserNameValid &&
        isConfirmPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
      failureOrSuccess =
          await firebaseAuthRepository.registerWithEmailAndPassword(
              email: state.email, password: state.password);
      await getIt<IUserDataRepository>().createUser(
        UserData(
          userName: UserName(state.userName.getOrCrash()),
          email: Email(state.email.getOrCrash()),
          phoneNumber: PhoneNumber(state.phoneNumber.getOrCrash()),
          userId: '',
          role: '',
        ),
      );
    }
    emit(
      state.copyWith(
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }
}
