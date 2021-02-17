import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Screen'),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/',
                );
              },
              child: Text('Skip'),
            ),
          ],
        ),
      ),
    );
  }
}
