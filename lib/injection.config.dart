// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'business_logic/admin/add_category/add_category_form_cubit.dart';
import 'business_logic/admin/add_item/add_item_form_cubit.dart';
import 'business_logic/animate_map_cursor/animate_map_cursor_cubit.dart';
import 'data/repositories/core/app_injectable_module.dart';
import 'business_logic/auth/auth_cubit.dart';
import 'business_logic/bottom_navigation/bottom_navigation_cubit.dart';
import 'data/models/user/cart.dart';
import 'data/repositories/cart/cart_facade.dart';
import 'business_logic/cart_functions/cart_functions_cubit.dart';
import 'business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'data/repositories/category/category_repository.dart';
import 'business_logic/category_watcher/category_watcher_cubit.dart';
import 'business_logic/check_role/check_role_cubit.dart';
import 'business_logic/checkout_form/checkout_form_cubit.dart';
import 'business_logic/admin/drop_down_button/drop_down_button_cubit.dart';
import 'data/repositories/auth/firebaseAuth_repository.dart';
import 'business_logic/google_maps_watcher/google_maps_watcher_cubit.dart';
import 'data/repositories/cart/i_cart_facade.dart';
import 'data/repositories/category/i_categopry_repository.dart';
import 'data/repositories/auth/i_firebaseAuth_repository.dart';
import 'data/repositories/item/i_item_repository.dart';
import 'data/repositories/order/i_order_repository.dart';
import 'data/repositories/user/i_userData_repository.dart';
import 'data/repositories/item/item_repository.dart';
import 'business_logic/item_watcher/item_watcher_cubit.dart';
import 'business_logic/map_anim_icon/map_anim_icon_cubit.dart';
import 'data/repositories/order/order_repository.dart';
import 'business_logic/order_watcher/order_watcher_cubit.dart';
import 'business_logic/register_form.dart/register_form_cubit.dart';
import 'business_logic/signIn_form.dart/sign_in_form_cubit.dart';
import 'data/repositories/user/userData_repository.dart';
import 'business_logic/user_watcher/user_watcher_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final appInjectableModule = _$AppInjectableModule();
  gh.factory<AnimateMapCursorCubit>(() => AnimateMapCursorCubit());
  gh.factory<BottomNavigationCubit>(() => BottomNavigationCubit());
  gh.factory<Cart>(() => appInjectableModule.userCart);
  gh.lazySingleton<FirebaseAuth>(() => appInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => appInjectableModule.firestore);
  gh.factory<GoogleMapsWatcherCubit>(() => GoogleMapsWatcherCubit());
  gh.lazySingleton<ICartFacade>(() => CartFacade(get<Cart>()));
  gh.lazySingleton<ICategoryRepository>(
      () => CategoryDataRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IFirebaseAuthRepository>(
      () => FirebaseAuthFacade(get<FirebaseAuth>()));
  gh.lazySingleton<IItemRepository>(
      () => ItemDataRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IOrderRepository>(
      () => OrderRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUserDataRepository>(
      () => UserDataRepository(get<FirebaseFirestore>()));
  gh.factory<ItemWatcherCubit>(() => ItemWatcherCubit(get<IItemRepository>()));
  gh.factory<MapAnimIconCubit>(() => MapAnimIconCubit());
  gh.factory<OrderWatcherCubit>(
      () => OrderWatcherCubit(get<IOrderRepository>()));
  gh.factory<RegisterFormCubit>(
      () => RegisterFormCubit(get<IFirebaseAuthRepository>()));
  gh.factory<SignInFormCubit>(
      () => SignInFormCubit(get<IFirebaseAuthRepository>()));
  gh.factory<UserWatcherCubit>(
      () => UserWatcherCubit(get<IUserDataRepository>()));
  gh.factory<AddCategoryFormCubit>(
      () => AddCategoryFormCubit(get<ICategoryRepository>()));
  gh.factory<AddItemFormCubit>(() => AddItemFormCubit(get<IItemRepository>()));
  gh.factory<AuthCubit>(() => AuthCubit(get<IFirebaseAuthRepository>()));
  gh.factory<CartFunctionsCubit>(() => CartFunctionsCubit(get<ICartFacade>()));
  gh.factory<CartWatcherCubit>(() => CartWatcherCubit(get<ICartFacade>()));
  gh.factory<CategoryWatcherCubit>(
      () => CategoryWatcherCubit(get<ICategoryRepository>()));
  gh.factory<CheckRoleCubit>(() => CheckRoleCubit(
      get<IUserDataRepository>(), get<IFirebaseAuthRepository>()));
  gh.factory<CheckoutFormCubit>(
      () => CheckoutFormCubit(get<IOrderRepository>()));
  gh.factory<DropDownButtonCubit>(
      () => DropDownButtonCubit(get<ICategoryRepository>()));
  return get;
}

class _$AppInjectableModule extends AppInjectableModule {}
