import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_navigation_state.dart';
part 'bottom_navigation_cubit.freezed.dart';

@injectable
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationState.initial());
  int currentIndex = 0;

  void startApp() {
    this.onTap(currentIndex);
  }

  Future<void> onTap(int index) async {
    currentIndex = index;
    emit(BottomNavigationState.indexChanged(currentIndex));
    if (currentIndex == 0) {
      emit(BottomNavigationState.officeCategory());
    }
    if (currentIndex == 1) {
      emit(BottomNavigationState.houseCategory());
    }
    if (currentIndex == 2) {
      emit(BottomNavigationState.horecaCategory());
    }
  }
}
