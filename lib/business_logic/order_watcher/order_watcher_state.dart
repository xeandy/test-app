part of 'order_watcher_cubit.dart';

@freezed
abstract class OrderWatcherState with _$OrderWatcherState {
  const factory OrderWatcherState.initial() = _Initial;
  const factory OrderWatcherState.loadInProgress() = _LoadInProgress;
  const factory OrderWatcherState.loadSuccess(List<OrderData> orders) =
      _LoadSuccess;
  const factory OrderWatcherState.empty() = _Empty;
  const factory OrderWatcherState.loadFailure(FirestoreFailure orderFailure) =
      _LoadFailure;
}
