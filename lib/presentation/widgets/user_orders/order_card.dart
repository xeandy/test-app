import 'package:flutter/material.dart';
import 'package:test_app/data/models/order/order.dart';
import 'package:test_app/presentation/widgets/user_orders/order_status.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key key, this.orders}) : super(key: key);
  final List<OrderData> orders;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: orders
            .map(
              (order) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                width: double.infinity,
                height: 220,
                child: Card(
                  semanticContainer:
                      false, //chtob rabotal padding vnutri containera
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order ID: ${order.orderID}'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Name'),
                            Text('Qty'),
                          ],
                        ),
                        Column(
                          children: order.cart.items
                              .toSet()
                              .map(
                                (item) => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item.name.getOrCrash(),
                                    ),
                                    Text(
                                      item.orderedQty.toString(),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                                'Total amount: ${order.cart.totalAmount.toString()}')
                          ],
                        ),
                        Row(
                          children: [
                            Text('Oder timestamp:'),
                            Spacer(),
                            Text(order.orderedTimeStamp),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Status:'),
                            Spacer(),
                            OrderStatus(
                              order: order,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
