import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/data/repositories/category/i_categopry_repository.dart';

part 'drop_down_button_state.dart';
part 'drop_down_button_cubit.freezed.dart';

@injectable
class DropDownButtonCubit extends Cubit<DropDownButtonState> {
  DropDownButtonCubit(this.categoryRepository)
      : super(DropDownButtonState.initial());

  final ICategoryRepository categoryRepository;
  StreamSubscription categoryWatcherSubscription;

  String categoryID = '';

  Future<void> getSubCategoryOfMainCategory1() async {
    categoryWatcherSubscription =
        categoryRepository.getSubCategoryOfMainCategory1().listen(
      (either) {
        emit(
          either.fold(
            (failure) => state.copyWith(categoryFailure: failure),
            (categories) => state.copyWith(categories: categories),
          ),
        );
      },
    );
  }

  void categoryChanged(String selectedCategoryID) {
    categoryID = selectedCategoryID;
  }

  @override
  Future<void> close() {
    categoryWatcherSubscription.cancel();
    return super.close();
  }
}
