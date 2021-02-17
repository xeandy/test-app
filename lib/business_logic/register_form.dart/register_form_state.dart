part of 'register_form_cubit.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    @required Email email,
    @required Password password,
    @required UserName userName,
    @required PhoneNumber phoneNumber,
    @required ConfirmPassword confirmPassword,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        email: Email(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', Password('')),
        userName: UserName(''),
        phoneNumber: PhoneNumber(''),
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
