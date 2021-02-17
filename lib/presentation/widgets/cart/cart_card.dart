import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_functions/cart_functions_cubit.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/data/models/user/cart.dart';

class CartCard extends StatelessWidget {
  final Cart userCart;

  CartCard({Key key, this.userCart}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 10),
          scrollDirection: Axis.vertical,
          children: userCart.items.toSet().map(
            (item) {
              final orderedQty = userCart.items
                  .where((element) => element.productId == item.productId)
                  .length;

              return Container(
                height: 130,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 5,
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/exmaple_img.png'),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                        height: 110,
                        width: size.width - 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              item.name.getOrCrash(),
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    context
                                        .read<CartFunctionsCubit>()
                                        .removeFromCart(item);

                                    context
                                        .read<CartWatcherCubit>()
                                        .checkCart();
                                  },
                                ),
                                SizedBox(width: 10),
                                Text(orderedQty.toString()),
                                SizedBox(width: 10),
                                IconButton(
                                  alignment: Alignment.centerLeft,
                                  iconSize: 30,
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    context.read<CartFunctionsCubit>()
                                      ..addToCart(item);

                                    context
                                        .read<CartWatcherCubit>()
                                        .checkCart();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        icon: Icon(
                          Icons.delete_forever,
                          size: 30,
                        ),
                        onPressed: () {
                          context.read<CartFunctionsCubit>().removeItem(item);
                          context.read<CartWatcherCubit>().checkCart();
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
