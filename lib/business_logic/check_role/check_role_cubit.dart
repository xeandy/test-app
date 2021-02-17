import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/user/userData.dart';
import 'package:test_app/data/repositories/auth/i_firebaseAuth_repository.dart';
import 'package:test_app/data/repositories/user/i_userData_repository.dart';

part 'check_role_state.dart';
part 'check_role_cubit.freezed.dart';

@injectable
class CheckRoleCubit extends Cubit<CheckRoleState> {
  CheckRoleCubit(this.userDataRepository, this.firebaseAuthRepository)
      : super(CheckRoleState.initial());
  final IFirebaseAuthRepository firebaseAuthRepository;

  final IUserDataRepository userDataRepository;

  StreamSubscription<Either<FirestoreFailure, UserData>>
      userDataStreamSubscription;

  Future<void> splashScreen() async {
    emit(CheckRoleState.splashScreen());
    await Future.delayed(Duration(seconds: 1));
    checkRole();
  }

  Future<void> checkRole() async {
    final userOption = await firebaseAuthRepository.getUser();

    userOption.fold(
      () => emit(CheckRoleState.unauthenticated()),
      (_) {
        userDataStreamSubscription = userDataRepository.fetchUserData().listen(
          (failureOrFetch) {
            emit(
              failureOrFetch.fold(
                (failure) => CheckRoleState.loadFailure(failure),
                (userData) {
                  if (userData.role == 'admin') {
                    return CheckRoleState.admin();
                  } else {
                    return CheckRoleState.user();
                  }
                },
              ),
            );
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    userDataStreamSubscription.cancel();
    return super.close();
  }
}
