part of 'animate_map_cursor_cubit.dart';

@freezed
abstract class AnimateMapCursorState with _$AnimateMapCursorState {
  const factory AnimateMapCursorState({
    @required double cursorHeight,
    @required double animValue,
    @required double googleMapAnimValue,
  }) = _AnimateMapCursorState;

  factory AnimateMapCursorState.initial() => AnimateMapCursorState(
        cursorHeight: 0.0,
        animValue: 0.0,
        googleMapAnimValue: 0.0,
      );
}
