import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/presentation/widgets/cart/check_cart.dart';
import 'package:test_app/presentation/widgets/cart/checkout_btn.dart';
import 'package:test_app/presentation/widgets/cart/total_amount.dart';

class UserCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF1EFF1),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: GradientColors.grey,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                width: size.width,
                height: size.width * 0.6,
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              BlocBuilder<CartWatcherCubit, CartWatcherState>(
                builder: (context, state) {
                  return state.maybeMap(
                    initial: (_) => Container(),
                    cartEmpty: (_) => Container(),
                    cart: (state) =>
                        TotalAmountWidget(userCart: state.userCart),
                    orElse: () => Container(),
                  );
                },
              )
            ],
          ),
          Expanded(
            child: CheckCart(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Container(),
                  authenticated: (_) => CheckoutBtn(),
                  unauthenticated: (_) => Center(
                    child: Text(
                      'Sign in for proceed checkout',
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
