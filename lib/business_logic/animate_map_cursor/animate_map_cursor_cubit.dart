import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'animate_map_cursor_state.dart';
part 'animate_map_cursor_cubit.freezed.dart';

@injectable
class AnimateMapCursorCubit extends Cubit<AnimateMapCursorState> {
  AnimateMapCursorCubit() : super(AnimateMapCursorState.initial());
  double cursorHeight = 40;

  void onStart(
      AnimationController controller, AnimationController googleMapController) {
    var animation = Tween<double>(begin: 1, end: 1.2).animate(controller)
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            controller.reverse();
          } else if (status == AnimationStatus.dismissed) {
            controller.forward();
          }
        },
      );
    var googleMapAnimation =
        Tween<double>(begin: 1, end: 1.2).animate(googleMapController);
    var googleMapAnimValue = useAnimation(googleMapAnimation);
    var animValue = useAnimation(animation);
    emit(
      state.copyWith(
          animValue: animValue, googleMapAnimValue: googleMapAnimValue),
    );
  }

  void onCameraMoveStarted(
      AnimationController controller, AnimationController googleMapController) {
    cursorHeight = cursorHeight == 40 ? 0 : 0;
    controller.forward();
    googleMapController.forward();
    emit(state.copyWith(cursorHeight: cursorHeight));
  }

  void onCameraIdle(
      AnimationController controller, AnimationController googleMapController) {
    cursorHeight = cursorHeight == 0 ? 40 : 40;
    controller.reset();
    controller.stop();
    googleMapController.reverse();

    emit(state.copyWith(cursorHeight: cursorHeight));
  }
}
