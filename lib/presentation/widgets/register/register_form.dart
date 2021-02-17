
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/business_logic/register_form.dart/register_form_cubit.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormCubit, RegisterFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: failure.maybeMap(
                    serverError: (_) => Text('Server Error'),
                    emailAlredyInUse: (_) => Text('Email already in use '),
                    invalidEmail: (_) => Text('Invalid Email'),
                    orElse: () => null,
                  ),
                ),
              );
            },
            (_) {
              Navigator.of(context).pushReplacementNamed('/');
              context.read<AuthCubit>().checkAuthRequest();
            },
          ),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  onChanged: (value) =>
                      context.read<RegisterFormCubit>().userNameChanged(value),
                  validator: (_) =>
                      context.read<RegisterFormCubit>().state.userName.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (_) => 'Name can not be empty',
                              exceedingLength: (_) => 'Превышена длинна имени',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                  decoration: InputDecoration(
                    hintText: 'Name',
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
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
                  onChanged: (value) =>
                      context.read<RegisterFormCubit>().phoneNumberChanged(value),
                  validator: (_) => context
                      .read<RegisterFormCubit>()
                      .state
                      .phoneNumber
                      .value
                      .fold(
                        (failure) => failure.maybeMap(
                          empty: (_) => 'Phone Number can not be empty',
                          invalidPhoneNumber: (_) => 'Invalid Phone Number',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: 'Phone Number',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(11.5),
                      child: Text(
                        '+998',
                        style: TextStyle(fontSize: 16.5),
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 9,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  onChanged: (value) =>
                      context.read<RegisterFormCubit>().emailChanged(value),
                  validator: (_) =>
                      context.read<RegisterFormCubit>().state.email.value.fold(
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
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
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
                  onChanged: (value) =>
                      context.read<RegisterFormCubit>().passwordChanged(value),
                  validator: (_) =>
                      context.read<RegisterFormCubit>().state.password.value.fold(
                            (failure) => failure.maybeMap(
                              empty: (_) => 'Password can not be empty',
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
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
                      .read<RegisterFormCubit>()
                      .confirmPasswordChanged(value),
                  validator: (_) => context
                      .read<RegisterFormCubit>()
                      .state
                      .confirmPassword
                      .value
                      .fold(
                        (failure) => failure.maybeMap(
                          passwordNotMatch: (_) => 'Password not Match',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
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
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      context
                          .read<RegisterFormCubit>()
                          .registerWithEmailAndPassword();
                    },
                    color: Colors.blueGrey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
