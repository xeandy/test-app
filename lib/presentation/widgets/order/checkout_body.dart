import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_functions/cart_functions_cubit.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/business_logic/checkout_form/checkout_form_cubit.dart';
import 'package:test_app/business_logic/google_maps_watcher/google_maps_watcher_cubit.dart';
import 'package:test_app/data/models/user/cart.dart';
import 'package:test_app/presentation/widgets/order/checkout_form.dart';
import 'package:test_app/presentation/widgets/order/items_data_table.dart';
import 'package:test_app/presentation/widgets/order/map/map.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({
    Key key,
    @required this.userCart,
  }) : super(key: key);

  final Cart userCart;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutFormCubit, CheckoutFormState>(
      listener: (context, state) {
        state.submitFailureOrSucces.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: failure.maybeMap(
                    insufficientPermission: (_) =>
                        Text('Insufficient Permission'),
                    orElse: () =>
                        Text('Unexpected Error. \nPlease contact support '),
                  ),
                ),
              );
            },
            (_) async {
              await Navigator.of(context)
                  .pushNamedAndRemoveUntil('/userOrders', (route) => true);
              userCart.items.clear();
              context.read<CartWatcherCubit>().checkCart();
              context.read<CartFunctionsCubit>().getUserCart();
            },
          ),
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ItemsDataTable(userCart: userCart),
              SizedBox(height: 10),
              CheckoutForm(),
              MapScreen(),
              SizedBox(height: 10),
              Text('Сумма к оплате: ${userCart.totalAmount}'),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () async {
                  final isValid =
                      await context.read<CheckoutFormCubit>().isValid();
                  if (isValid) {
                    return showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (newContext) => Dialog(
                        //bez newContext ne podtverjdaet
                        child: Container(
                          height: 150,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlatButton(
                                onPressed: () {
                                  var lastPosition = context
                                      .read<GoogleMapsWatcherCubit>()
                                      .lastPosition;
                                  context
                                      .read<CheckoutFormCubit>()
                                      .createOrder(userCart, lastPosition);
                                },
                                child: Text('Ок'),
                              ),
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Отмена'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Text('Подтвердить'),
              ),
            ],
          ),
        );
      },
    );
  }
}
