part of 'add_item_form_cubit.dart';

@freezed
abstract class AddItemFormState with _$AddItemFormState {
  const factory AddItemFormState({
    @required String name,
    @required int price,
    @required int discount,
    @required int salePrice,
    @required int qty,
    @required String imageUrl,
    @required File image,
    @required bool isAdding,
    @required bool isAdded,
    @required Option<Either<FirestoreFailure, Unit>> submitFailureOrSucces,
  }) = _AddItemFormState;

  factory AddItemFormState.initial() => AddItemFormState(
        discount: 0,
        price: 0,
        salePrice: 0,
        qty: 0,
        name: '',
        imageUrl: '',
        image: File(''),
        submitFailureOrSucces: none(),
        isAdding: false,
        isAdded: false,
      );
}
