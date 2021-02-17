import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/data/repositories/category/i_categopry_repository.dart';

part 'category_watcher_state.dart';
part 'category_watcher_cubit.freezed.dart';

@injectable
class CategoryWatcherCubit extends Cubit<CategoryWatcherState> {
  final ICategoryRepository categoryRepository;
  CategoryWatcherCubit(this.categoryRepository)
      : super(CategoryWatcherState.initial());

  StreamSubscription categoryWatcherSubscription;

  Future<void> getSubCategoryOfMainCategory1() async {
    categoryWatcherSubscription =
        categoryRepository.getSubCategoryOfMainCategory1().listen(
      (failureOrFetch) {
        emit(
          failureOrFetch.fold(
            (failure) => CategoryWatcherState.loadFailure(failure),
            (categories) => CategoryWatcherState.loadSuccess(categories),
          ),
        );
      },
    );
  }

  Future<void> getSubCategoryOfMainCategory2() async {
    categoryRepository.getSubCategoryOfMainCategory2();
  }

  @override
  Future<void> close() {
    categoryWatcherSubscription.cancel();
    return super.close();
  }
}
