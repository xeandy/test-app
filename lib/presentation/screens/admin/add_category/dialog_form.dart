import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/admin/add_category/add_category_form_cubit.dart';

class DialogForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 220,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: <Widget>[
                TextFormField(
                  onChanged: (value) {
                    context
                        .read<AddCategoryFormCubit>()
                        .categoryNameChanged(value);
                  },
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: FlatButton(
                        child: Text(
                          'Ok',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          context
                              .read<AddCategoryFormCubit>()
                              .addToMainCategory1();
                        },
                        color: Colors.blue.shade300,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      child: FlatButton(
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Colors.red.shade300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
