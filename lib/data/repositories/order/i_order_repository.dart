import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/order/order.dart';
import 'package:test_app/data/models/user/userData.dart';

abstract class IOrderRepository {
  Future<Either<FirestoreFailure, Unit>> createOrder(OrderData oder);
  Future<UserData> fetchUserData();
  Stream<Either<FirestoreFailure, List<OrderData>>> fetchOrderData();
}
