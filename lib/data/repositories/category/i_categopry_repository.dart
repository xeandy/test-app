import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/item/category.dart';

abstract class ICategoryRepository {
  void getSubCategoryOfMainCategory2();
  Future<Either<FirestoreFailure, Unit>> addToMainCategory1(Category category);
  Stream<Either<FirestoreFailure, List<Category>>>
      getSubCategoryOfMainCategory1();
}
