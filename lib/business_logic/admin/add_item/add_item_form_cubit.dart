import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/models/item/value_ojects.dart';
import 'package:test_app/data/repositories/item/i_item_repository.dart';

part 'add_item_form_state.dart';
part 'add_item_form_cubit.freezed.dart';

@injectable
class AddItemFormCubit extends Cubit<AddItemFormState> {
  AddItemFormCubit(this.itemRepository) : super(AddItemFormState.initial());
  FirebaseStorage fs = FirebaseStorage.instance;
  final IItemRepository itemRepository;
  final picker = ImagePicker();

  void discountChanged(int discount) {
    emit(
      state.copyWith(
        discount: discount,
        submitFailureOrSucces: none(),
      ),
    );
  }

  void priceChanged(int price) {
    emit(
      state.copyWith(
        price: price,
        submitFailureOrSucces: none(),
      ),
    );
  }

  void nameChanged(String name) {
    emit(
      state.copyWith(
        name: name,
        submitFailureOrSucces: none(),
      ),
    );
  }

  void qtyChanged(int qty) {
    emit(
      state.copyWith(
        qty: qty,
        submitFailureOrSucces: none(),
      ),
    );
  }

  void calculateSalePrice(int discount) {
    if (discount == 0) {
      emit(state.copyWith(salePrice: 0));
    } else {
      var salePrice = state.price * ((100 - discount) / 100);
      emit(
        state.copyWith(
          salePrice: salePrice.toInt(),
          submitFailureOrSucces: none(),
        ),
      );
    }
  }

  Future<void> pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    emit(
      state.copyWith(
        image: File(pickedFile.path),
        submitFailureOrSucces: none(),
      ),
    );
  }

  Future<void> uploadImage() async {
    var time = DateTime.now();
    Reference reference =
        fs.ref().child('itemImg/${state.name + time.toString()}.jpg');
    UploadTask uploadTask = reference.putFile(
        state.image, SettableMetadata(contentType: 'image/jpg'));
    uploadTask.snapshotEvents.listen(
      (taskSnapshot) {
        if (taskSnapshot.state == TaskState.running) {
          emit(state.copyWith(
            isAdding: true,
            submitFailureOrSucces: none(),
          ));
        } else if (taskSnapshot.state == TaskState.success) {
          emit(state.copyWith(
            isAdding: false,
            submitFailureOrSucces: none(),
          ));
        }
      },
    );

    var imageUrl = await (await uploadTask).ref.getDownloadURL();

    emit(
      state.copyWith(
        imageUrl: imageUrl,
        submitFailureOrSucces: none(),
      ),
    );
  }

  Future<void> addItem(String categoryID) async {
    uploadImage().whenComplete(() {
      itemRepository
          .addItem(
        Item(
          name: Name(state.name),
          price: state.price,
          qty: Qty(state.qty.toString()),
          categoryId: UniqueId.fromUniqueString(categoryID),
          discount: state.discount,
          salePrice: state.salePrice,
          itemImg: Img(state.imageUrl),
          onSale: false,
          isNew: false,
          orderedQty: 0,
          productId: UniqueId.fromUniqueString(''),
        ),
      )
          .then(
        (submitFailureOrSucces) {
          emit(
            state.copyWith(
              submitFailureOrSucces: optionOf(submitFailureOrSucces),
              isAdded: true,
            ),
          );
        },
      ).whenComplete(
        () => emit(
          AddItemFormState.initial(),
        ),
      );
    });
  }
}
