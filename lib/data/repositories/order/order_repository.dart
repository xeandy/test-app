import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/order/order.dart';
import 'package:test_app/data/models/user/userData.dart';
import 'package:test_app/data/repositories/order/i_order_repository.dart';
import 'package:test_app/data/repositories/order/order_DTO.dart';
import 'package:test_app/data/repositories/user/userData_DTO.dart';
import 'package:test_app/data/repositories/core/firestore_helppers.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final FirebaseFirestore firestore;

  final CollectionReference orderCollectionReference =
      FirebaseFirestore.instance.collection('orders');
  OrderRepository(this.firestore);
  @override
  Future<Either<FirestoreFailure, Unit>> createOrder(OrderData order) async {
    try {
      final orderID = orderCollectionReference.doc().id;

      final orderDTO = OrderDTO.fromDomain(order.copyWith(orderID: orderID));
      await orderCollectionReference.doc(orderID).set(orderDTO.toJson());
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
  Future<UserData> fetchUserData() async {
    final userDoc = await firestore.userDocument();
    final user = userDoc
        .snapshots()
        .map(
          (snapshot) => UserDataDTO.fromJson(snapshot.data()).toDomain(),
        )
        .first;
    return user;
  }

  @override
  Stream<Either<FirestoreFailure, List<OrderData>>> fetchOrderData() {
    return orderCollectionReference
        .orderBy('orderedTimeStamp', descending: true)
        .snapshots()
        .map(
          (qsnap) => right<FirestoreFailure, List<OrderData>>(qsnap.docs
              .map((qdsnap) => OrderDTO.fromJson(qdsnap.data()).toDomain())
              .toList()),
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
}
