import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';

class CheckoutBtn extends StatelessWidget {
  const CheckoutBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartWatcherCubit, CartWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          cart: (_) => FlatButton(
            minWidth: double.infinity,
            padding: EdgeInsets.all(20),
            textColor: Colors.white,
            color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/submitOrder',
              );
            },
            child: Text('Оформить заказ'),
          ),
          cartEmpty: (_) => Container(),
          orElse: () => Container(),
        );
      },
    );
  }
}
