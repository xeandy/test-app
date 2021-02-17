part of 'cart_functions_cubit.dart';

@freezed
abstract class CartFunctionsState with _$CartFunctionsState {
  const factory CartFunctionsState.initial() = _Initial;

  const factory CartFunctionsState.cartLoaded({Cart userCart}) = _CartLoaded;
}
