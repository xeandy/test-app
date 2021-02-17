import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/data/models/item/value_ojects.dart';
import 'package:test_app/data/repositories/category/i_categopry_repository.dart';

part 'add_category_form_state.dart';
part 'add_category_form_cubit.freezed.dart';

@injectable
class AddCategoryFormCubit extends Cubit<AddCategoryFormState> {
  AddCategoryFormCubit(this.categoryRepository)
      : super(AddCategoryFormState.initial());

  final ICategoryRepository categoryRepository;

  void categoryNameChanged(String categoryName) {
    emit(
      state.copyWith(
        category: state.category.copyWith(
          categoryName: CategoryName(categoryName),
        ),
        submitFailureOrSucces: none(),
      ),
    );
  }

  Future<void> addToMainCategory1() async {
    await categoryRepository.addToMainCategory1(state.category).then(
      (submitFailureOrSucces) {
        emit(
          state.copyWith(
            submitFailureOrSucces: optionOf(submitFailureOrSucces),
          ),
        );
      },
    ).whenComplete(
      () => emit(AddCategoryFormState.initial()),
    );
  }
}
