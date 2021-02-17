part of 'bottom_navigation_cubit.dart';

@freezed
abstract class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.initial() = _Initial;
  const factory BottomNavigationState.indexChanged(int currentIndex) =
      _IndexChanged;

  const factory BottomNavigationState.officeCategory() = _OfficeCategory;

  const factory BottomNavigationState.houseCategory() = _HouseCategory;
  const factory BottomNavigationState.horecaCategory() = _HoReCaCategory;
}
