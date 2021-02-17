// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';

// part 'animate_icon_test_state.dart';
// part 'animate_icon_test_cubit.freezed.dart';

// @injectable
// class AnimateIconTestCubit extends Cubit<AnimateIconTestState> {
//   AnimateIconTestCubit() : super(AnimateIconTestState.initial());
//   double heightCursor = 40;

//   void onStart(AnimationController iconController,
//       AnimationController mapController) async {
//     var iconAnimation =
//         Tween<double>(begin: 1, end: 1.2).animate(iconController)
//           ..addStatusListener(
//             (status) {
//               if (status == AnimationStatus.completed) {
//                 iconController.reverse();
//               } else if (status == AnimationStatus.dismissed) {
//                 iconController.forward();
//               }
//             },
//           );
//     var mapAnimation = Tween<double>(begin: 1, end: 1.2).animate(mapController);
//     var mapAnimValue = useAnimation(mapAnimation);
//     var iconAnimValue = useAnimation(iconAnimation);
//     emit(state.copyWith(
//         iconAnimValue: iconAnimValue, mapAnimValue: mapAnimValue));
//   }

//   void onCameraMove(
//       AnimationController iconController, AnimationController mapController) {
//     heightCursor = heightCursor == 40 ? 0 : 0;

//     iconController.forward();

//     mapController.forward();
//   }

//   void onCameraIdle(
//       AnimationController iconController, AnimationController mapController) {
//     heightCursor = heightCursor == 0 ? 40 : 40;

//     iconController.reset();
//     iconController.stop();
//     mapController.reverse();
//   }
// }
