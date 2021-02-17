import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/data/repositories/item/i_item_repository.dart';
import 'package:test_app/data/repositories/item/item_DTO.dart';

@LazySingleton(as: IItemRepository)
class ItemDataRepository implements IItemRepository {
  final FirebaseFirestore firebaseFirestore;

  ItemDataRepository(this.firebaseFirestore);
  @override
  Stream<Either<FirestoreFailure, List<Item>>> getItems() {
    return firebaseFirestore
        .collection('items')
        // .orderBy('onSale', descending: true)
        // .orderBy('isNew', descending: true)
        .snapshots()
        .map(
          (qsnap) => right<FirestoreFailure, List<Item>>(
            qsnap.docs
                .map((qdsnap) => ItemDTO.fromJson(qdsnap.data()).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith(
      (e) {
        if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
          return left(FirestoreFailure.insufficientPermission());
        } else {
          return left(FirestoreFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<FirestoreFailure, Unit>> addItem(Item item) async {
    final CollectionReference itemCollectionReference =
        firebaseFirestore.collection('items');
    final itemID = itemCollectionReference.doc().id;
    final itemDTO = ItemDTO.fromDomain(
      item.copyWith(
        productId: UniqueId.fromUniqueString(itemID),
      ),
    );
    try {
      await itemCollectionReference.doc(itemID).set(itemDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }
}
