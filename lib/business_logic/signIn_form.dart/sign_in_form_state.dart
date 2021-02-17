part of 'sign_in_form_cubit.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required Email email,
    @required Password password,
    @required bool isSubmitting,
    @required bool showErrorMessage,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        email: Email(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessage: false,
        authFailureOrSuccess: none(),
      );
}
