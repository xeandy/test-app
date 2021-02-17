import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/register_form.dart/register_form_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/register/register_form.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterFormCubit>(),
      child: GestureDetector(
        onTap: () {
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[300],
            elevation: 0,
          ),
          body: RegisterForm(),
        ),
      ),
    );
  }
}
