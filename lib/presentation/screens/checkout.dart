import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/business_logic/checkout_form/checkout_form_cubit.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/order/checkout_body.dart';

class Checkout extends StatelessWidget {
  final Cart userCart;

  Checkout({Key key, this.userCart}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckoutFormCubit>(),
      child: GestureDetector(
        onTap: () {
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(),
          body: BlocBuilder<CartWatcherCubit, CartWatcherState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                cart: (state) => CheckoutBody(userCart: state.userCart),
              );
            },
          ),
        ),
      ),
    );
  }
}
