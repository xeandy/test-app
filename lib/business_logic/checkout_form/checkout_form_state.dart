part of 'checkout_form_cubit.dart';

@freezed
abstract class CheckoutFormState with _$CheckoutFormState {
  const factory CheckoutFormState({
    @required OrderData order,
    @required Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces,
  }) = _CheckoutFormState;

  factory CheckoutFormState.initial() => CheckoutFormState(
        order: OrderData.empty(),
        submitFailureOrSucces: none(),
      );
}
