part of 'map_anim_icon_cubit.dart';

@freezed
abstract class MapAnimIconState with _$MapAnimIconState {
  const factory MapAnimIconState({
    double iconAnimValue,
    double mapAnimValue,
  }) = _MapAnimIconState;

  factory MapAnimIconState.initial() => MapAnimIconState(
        iconAnimValue: 0.0,
        mapAnimValue: 0.0,
      );
}
