import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/order_watcher/order_watcher_cubit.dart';
import 'package:test_app/presentation/widgets/user_orders/order_card.dart';

class UserOrdersBody extends StatelessWidget {
  const UserOrdersBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderWatcherCubit, OrderWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          loadSuccess: (state) => OrderCard(orders: state.orders),
          loadFailure: (state) => Center(
            child: Text(
              state.orderFailure.maybeMap(
                insufficientPermission: (_) => 'Insufficient Permission',
                orElse: () => 'Unexpected Error. \nPlease contact support ',
              ),
            ),
          ),
          empty: (_) => Center(
            child: Text('Empty'),
          ),
        );
      },
    );
  }
}
