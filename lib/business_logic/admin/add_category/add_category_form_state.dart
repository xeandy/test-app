part of 'add_category_form_cubit.dart';

@freezed
abstract class AddCategoryFormState with _$AddCategoryFormState {
  const factory AddCategoryFormState({
    @required Category category,
    @required Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces,
  }) = _AddCategoryFormState;

  factory AddCategoryFormState.initial() => AddCategoryFormState(
        category: Category.empty(),
        submitFailureOrSucces: none(),
      );
}
