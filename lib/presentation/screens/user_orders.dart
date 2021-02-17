import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/order_watcher/order_watcher_cubit.dart';
import 'package:test_app/injection.dart';
import 'package:test_app/presentation/widgets/user_orders/user_orders_body.dart';

class UserOrders extends StatelessWidget {
  const UserOrders({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderWatcherCubit>(
      create: (context) => getIt<OrderWatcherCubit>()..fetchOrders(),
      child: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pushReplacementNamed('/'); //rabotaet
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('My Orders'),
          ),
          body: UserOrdersBody(),
        ),
      ),
    );
  }
}
