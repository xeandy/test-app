part of 'google_maps_watcher_cubit.dart';

@freezed
abstract class GoogleMapsWatcherState with _$GoogleMapsWatcherState {
  const factory GoogleMapsWatcherState.initial() = _Initial;
  const factory GoogleMapsWatcherState.loadInProgress() = _LoadInProgress;

  const factory GoogleMapsWatcherState.loadSuccess(
      {@required LatLng initialPosition}) = _LoadSuccess;
  const factory GoogleMapsWatcherState.loadFailure() = _LoadFailure;
}
