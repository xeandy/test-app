import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/checkout_form/checkout_form_cubit.dart';

class CheckoutForm extends StatelessWidget {
  const CheckoutForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              onChanged: (value) =>
                  context.read<CheckoutFormCubit>().orderCommentChanged(value),
              validator: (_) => context
                  .read<CheckoutFormCubit>()
                  .state
                  .order
                  .orderComment
                  .value
                  .fold(
                    (failure) => failure.maybeMap(
                      empty: (_) => 'Please fill the Order comment field',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
              autocorrect: false,
              decoration: InputDecoration(
                errorText: 'Order comment can not be empty',
                hintText: 'Comment',
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
