import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/check_role/check_role_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/screens/home.dart';
import 'admin/admin.dart';

class CheckRole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckRoleCubit, CheckRoleState>(
      cubit: getIt<CheckRoleCubit>()..checkRole(),
      builder: (context, state) {
        return state.maybeMap(
          admin: (value) => Admin(),
          user: (value) => HomeScreen(),
          orElse: () => Container(),
        );
      },
    );
  }
}
