import 'package:flutter/material.dart';
import 'package:test_app/presentation/services/double_tap_exit/double_tap_exit.dart';
import 'package:test_app/presentation/widgets/home_widgets/bottom_navigation_bar.dart';
import 'package:test_app/presentation/widgets/home_widgets/check_auth/check_auth.dart';
import 'package:test_app/presentation/widgets/home_widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => DoubleTapExit().doubleTapExit(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            CheckAuth(),
          ],
        ),
        body: HomeBody(),
        bottomNavigationBar: BtmNavigationBar(),
      ),
    );
  }
}
