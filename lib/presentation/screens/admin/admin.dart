import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/presentation/screens/admin/add_category/add_category.dart';
import 'package:test_app/presentation/services/double_tap_exit/double_tap_exit.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => DoubleTapExit().doubleTapExit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Admin'),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AuthCubit>().signOut();
                Navigator.of(context).pushReplacementNamed('/homeScreen');
              },
            )
          ],
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () async {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AddCategoryDialog(),
                  );
                },
                child: Text('Add Sub Category'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/addItem');
                },
                child: Text('Add Item'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
