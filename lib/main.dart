import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/business_logic/admin/add_category/add_category_form_cubit.dart';
import 'package:test_app/business_logic/admin/add_item/add_item_form_cubit.dart';
import 'package:test_app/business_logic/admin/drop_down_button/drop_down_button_cubit.dart';
import 'package:test_app/business_logic/animate_map_cursor/animate_map_cursor_cubit.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/business_logic/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:test_app/business_logic/cart_functions/cart_functions_cubit.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/business_logic/check_role/check_role_cubit.dart';
import 'package:test_app/business_logic/checkout_form/checkout_form_cubit.dart';
import 'package:test_app/business_logic/google_maps_watcher/google_maps_watcher_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/services/route/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationCubit>(
          create: (context) => getIt<BottomNavigationCubit>()..startApp(),
        ),
        BlocProvider<AuthCubit>(
          create: (context) => getIt<AuthCubit>()..checkAuthRequest(),
        ),
        BlocProvider<CartWatcherCubit>(
          create: (context) => getIt<CartWatcherCubit>()..checkCart(),
        ),
        BlocProvider<CartFunctionsCubit>(
          create: (context) => getIt<CartFunctionsCubit>()..getUserCart(),
        ),
        BlocProvider<CheckoutFormCubit>(
          create: (context) => getIt<CheckoutFormCubit>(),
        ),
        BlocProvider<GoogleMapsWatcherCubit>(
          create: (context) =>
              getIt<GoogleMapsWatcherCubit>()..setInitialPosition(),
        ),
        BlocProvider<AnimateMapCursorCubit>(
          create: (context) => getIt<AnimateMapCursorCubit>(),
        ),
        BlocProvider<CheckRoleCubit>(
          create: (context) => getIt<CheckRoleCubit>()..splashScreen(),
        ),
        BlocProvider<AddCategoryFormCubit>(
          create: (context) => getIt<AddCategoryFormCubit>(),
        ),
        BlocProvider<AddItemFormCubit>(
          create: (context) => getIt<AddItemFormCubit>(),
        ),
        BlocProvider<DropDownButtonCubit>(
          create: (context) => getIt<DropDownButtonCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
