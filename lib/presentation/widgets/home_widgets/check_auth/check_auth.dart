import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/presentation/widgets/home_widgets/check_auth/pop_up_menu_btn.dart';
import 'package:test_app/presentation/widgets/home_widgets/check_auth/signIn_signUp_btn.dart';

class CheckAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          authenticated: (_) => PopUpMenuBtn(),
          unauthenticated: (_) => SignInUpBtn(),
        );
      },
    );
  }
}
