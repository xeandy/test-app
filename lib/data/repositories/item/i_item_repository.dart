import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/item/item.dart';

abstract class IItemRepository {
  Stream<Either<FirestoreFailure, List<Item>>> getItems();
  Future<Either<FirestoreFailure, Unit>> addItem(Item item);
}
