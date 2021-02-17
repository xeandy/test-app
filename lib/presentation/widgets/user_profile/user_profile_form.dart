import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/user_watcher/user_watcher_cubit.dart';
import 'package:test_app/data/models/user/userData.dart';

class UserProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<UserWatcherCubit, UserWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            UserData user = state.userData;

            return Column(
              children: [
                TextFormField(
                  initialValue: state.userData.userName.getOrCrash(),
                  decoration: InputDecoration(
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
                    prefixIcon: Icon(Icons.verified_user),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: user.phoneNumber.getOrCrash(),
                  decoration: InputDecoration(
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
                    prefixIcon: Icon(Icons.phone_android),
                    prefixText: '+998 ',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: user.email.getOrCrash(),
                  decoration: InputDecoration(
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
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: size.width,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Сохранить',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          loadFailure: (state) => Center(
            child: Text(
              state.userDataFailure.maybeMap(
                insufficientPermission: (_) => 'Insufficient Permission',
                orElse: () => 'Unexpected Error. \nPlease contact support ',
              ),
            ),
          ),
        );
      },
    );
  }
}
