part of 'cart_watcher_cubit.dart';

@freezed
abstract class CartWatcherState with _$CartWatcherState {
  const factory CartWatcherState.initial() = _Initial;
  const factory CartWatcherState.cartEmpty() = _CartEmpty;

  const factory CartWatcherState.cart({Cart userCart}) = _Cart;
}
