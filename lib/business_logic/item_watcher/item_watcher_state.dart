part of 'item_watcher_cubit.dart';

@freezed
abstract class ItemWatcherState with _$ItemWatcherState {
  const factory ItemWatcherState.initial() = _Initial;
  const factory ItemWatcherState.loadInProgress() = _LoadInProgress;
  const factory ItemWatcherState.loadSuccess(List<Item> items) = _LoadSuccess;
  const factory ItemWatcherState.loadFailure(FirestoreFailure itemFailure) =
      _LoadFailure;
}
