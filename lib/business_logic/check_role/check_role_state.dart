part of 'check_role_cubit.dart';

@freezed
abstract class CheckRoleState with _$CheckRoleState {
  const factory CheckRoleState.initial() = _Initial;
  const factory CheckRoleState.admin() = _RoleAdmin;
  const factory CheckRoleState.user() = _RoleUser;
  const factory CheckRoleState.unauthenticated() = _Unauthenticated;
  const factory CheckRoleState.splashScreen() = _SplashScreen;
  const factory CheckRoleState.loadFailure(FirestoreFailure userDataFailure) =
      _LoadFailure;
}
