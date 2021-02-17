part of 'drop_down_button_cubit.dart';

@freezed
abstract class DropDownButtonState with _$DropDownButtonState {
  const factory DropDownButtonState({
    List<Category> categories,
    FirestoreFailure categoryFailure,
  }) = _DropDownButtonState;

  factory DropDownButtonState.initial() => DropDownButtonState(
        categories: [],
        categoryFailure: FirestoreFailure.none(),
      );
}
