import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/data/models/core/firestore_failure.dart';
import 'package:test_app/data/models/user/userData.dart';
import 'package:test_app/data/repositories/user/i_userData_repository.dart';

part 'user_watcher_state.dart';
part 'user_watcher_cubit.freezed.dart';

@injectable
class UserWatcherCubit extends Cubit<UserWatcherState> {
  final IUserDataRepository userDataRepository;

  UserWatcherCubit(this.userDataRepository)
      : super(UserWatcherState.loadSuccess(UserData.empty()));
  StreamSubscription<Either<FirestoreFailure, UserData>>
      userDataStreamSubscription;

  Future<void> fetchUserData() async {
    userDataStreamSubscription =
        userDataRepository.fetchUserData().listen((failureOrFetch) {
      emit(
        failureOrFetch.fold(
          (failure) => UserWatcherState.loadFailure(failure),
          (userData) => UserWatcherState.loadSuccess(userData),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    userDataStreamSubscription.cancel();
    return super.close();
  }
}
