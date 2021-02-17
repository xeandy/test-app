import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/signIn_form.dart/sign_in_form_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/home_widgets/check_auth/signIn_show_dialog.dart';

class SignInUpBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: Icon(
        Icons.login,
        color: Colors.grey[300],
      ),
      label: Text(
        'SignIn',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () async {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => BlocProvider(
            create: (context) => getIt<SignInFormCubit>(),
            child: SignInShowDialog(),
          ),
        );
      },
    );
  }
}
