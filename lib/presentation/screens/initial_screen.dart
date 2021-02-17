import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/check_role/check_role_cubit.dart';
import 'package:test_app/presentation/screens/home.dart';
import 'package:test_app/presentation/screens/splash_screen.dart';
import 'admin/admin.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckRoleCubit, CheckRoleState>(
      builder: (context, state) {
        return state.maybeMap(
          splashScreen: (value) => SplashScreen(),
          user: (value) => HomeScreen(),
          admin: (value) => Admin(),
          unauthenticated: (value) => HomeScreen(),
          orElse: () => Container(),
        );
      },
    );
  }
}
