import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/user_profile/user_profile_form.dart';

class UserProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: Colors.blue,
              height: size.height * 0.5,
              width: size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                child: Text(
                  'Профиль',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 250),
            child: Container(
              width: size.width,
              // height: size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: UserProfileForm(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
