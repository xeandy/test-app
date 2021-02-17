import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_app/data/models/core/errors.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';
import 'package:test_app/injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IFirebaseAuthRepository>().getUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}
