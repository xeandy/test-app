import 'package:flutter/material.dart';
import 'package:test_app/data/models/user/cart.dart';

class TotalAmountWidget extends StatelessWidget {
  const TotalAmountWidget({
    Key key,
    this.userCart,
  }) : super(key: key);
  final Cart userCart;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: Row(
        children: <Widget>[
          Text(
            'Total Amount:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            userCart.totalAmount.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'USD',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
