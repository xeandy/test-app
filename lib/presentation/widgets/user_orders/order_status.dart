import 'package:flutter/material.dart';
import 'package:test_app/data/models/order/order.dart';

class OrderStatus extends StatelessWidget {
  final OrderData order;

  const OrderStatus({Key key, this.order}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (order.inProcessing) {
      return Row(
        children: [
          Text('In processing'),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ],
      );
    } else if (order.onDelivery) {
      return Row(
        children: [
          Text('On delivery'),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.blue[400],
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ],
      );
    } else if (order.delivered) {
      return Row(
        children: [
          Text('Delivered'),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ],
      );
    } else {
      return Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      );
    }
  }
}
