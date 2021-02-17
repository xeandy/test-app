import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/admin/add_category/add_category_form_cubit.dart';
import 'package:test_app/presentation/screens/admin/add_category/dialog_form.dart';

class AddCategoryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCategoryFormCubit, AddCategoryFormState>(
      listener: (context, state) {
        state.submitFailureOrSucces.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showFlash(
                context: context,
                duration: Duration(seconds: 1),
                builder: (context, controller) {
                  return Flash.dialog(
                    controller: controller,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 65),
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: failure.maybeMap(
                        orElse: () => Container(),
                        unexpected: (_) =>
                            Text('Unexpected Error. \nPlease contact support '),
                        insufficientPermission: (_) =>
                            Text('Insufficient Permission'),
                      ),
                    ),
                  );
                },
              );
            },
            (success) {
              showFlash(
                context: context,
                duration: Duration(seconds: 1),
                builder: (context, controller) {
                  return Flash.dialog(
                    controller: controller,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 65),
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Added'),
                    ),
                  );
                },
              );
              Future.delayed(Duration(milliseconds: 1000)).whenComplete(
                () {
                  Navigator.of(context).pop();
                },
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return DialogForm();
      },
    );
  }
}
