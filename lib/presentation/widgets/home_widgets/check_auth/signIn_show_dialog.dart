import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/business_logic/signIn_form.dart/sign_in_form_cubit.dart';

class SignInShowDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<SignInFormCubit, SignInFormState>(
      builder: (context, state) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: size.height * 0.45,
            child: BlocListener<SignInFormCubit, SignInFormState>(
              listener: (context, state) {
                state.authFailureOrSuccess.fold(
                  () {},
                  (either) => either.fold(
                    (failure) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: failure.maybeMap(
                            serverError: (_) => Text('Server Error'),
                            emailAlredyInUse: (_) =>
                                Text('Email already in use '),
                            invalidEmailAndPasswordCombination: (_) =>
                                Text('Invalid email and password combination'),
                            orElse: null,
                          ),
                        ),
                      );
                    },
                    (_) {
                      context.read<AuthCubit>().checkAuthRequest();
                      Navigator.of(context).pushReplacementNamed('/checkRole');
                    },
                  ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Icon(
                        Icons.close,
                        size: 25,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 20),
                    child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            onChanged: (value) => context
                                .read<SignInFormCubit>()
                                .emailChanged(value),
                            validator: (_) => context
                                .read<SignInFormCubit>()
                                .state
                                .email
                                .value
                                .fold(
                                  (failure) => failure.maybeMap(
                                    invalidEmail: (_) => 'Invalid Email',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextFormField(
                            onChanged: (value) => context
                                .read<SignInFormCubit>()
                                .passwordChanged(value),
                            validator: (_) => context
                                .read<SignInFormCubit>()
                                .state
                                .password
                                .value
                                .fold(
                                  (failure) => failure.maybeMap(
                                    empty: (_) => 'Enter Password',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: 150,
                            height: 50,
                            child: FlatButton(
                              child: Text(
                                'SignIn',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                context
                                    .read<SignInFormCubit>()
                                    .signInWithEmailAndPassword();
                              },
                              color: Colors.blueGrey[300],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Does not have an account?',
                                  style: TextStyle(fontSize: 12),
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed('/register');
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      color: Colors.blueGrey[300],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
