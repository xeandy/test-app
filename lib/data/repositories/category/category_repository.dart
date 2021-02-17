import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/data/repositories/category/category_DTO.dart';
import 'package:test_app/data/repositories/category/i_categopry_repository.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryDataRepository implements ICategoryRepository {
  final FirebaseFirestore firestore;

  CategoryDataRepository(this.firestore);

  @override
  void getSubCategoryOfMainCategory2() async {
    print('mainCategory2');
  }

  @override
  Future<Either<FirestoreFailure, Unit>> addToMainCategory1(
      Category category) async {
    final CollectionReference collectionReference =
        firestore.collection('mainCategory1');
    final categoryID = collectionReference.doc().id;
    final orderDTO = CategoryDTO.fromDomain(
        category.copyWith(categoryID: UniqueId.fromUniqueString(categoryID)));
    try {
      await collectionReference.doc(categoryID).set(orderDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(FirestoreFailure.insufficientPermission());
      } else {
        return left(FirestoreFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FirestoreFailure, List<Category>>>
      getSubCategoryOfMainCategory1() {
    return firestore
        .collection('mainCategory1')
        .snapshots()
        .map((snapshot) => right<FirestoreFailure, List<Category>>(snapshot.docs
            .map((doc) => CategoryDTO.fromJson(doc.data()).toDomain())
            .toList()))
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
}
