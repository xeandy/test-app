import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/presentation/widgets/cart/cart_card.dart';

class CheckCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartWatcherCubit, CartWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          cartEmpty: (_) => Center(
            child: Text('Empty'),
          ),
          cart: (state) => CartCard(
            userCart: state.userCart,
          ),
        );
      },
    );
  }
}
