import 'package:flutter/material.dart';
import 'package:test_app/data/models/item/item.dart';

class SaleWidget extends StatelessWidget {
  final Item item;

  const SaleWidget({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (item.onSale) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20 * 1.5,
          vertical: 20 / 4,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow[300],
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: Text(
          'Sale ${item.discount}%',
          style: TextStyle(fontSize: 13, fontFamily: 'Montserrat-Bold'),
        ),
      );
    } else if (item.isNew) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20 * 0.8,
          vertical: 20 / 4,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red[300],
          ),
          // color: Colors.lime,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: Text(
          'New',
          style: TextStyle(fontSize: 13, fontFamily: 'Montserrat-Bold'),
        ),
      );
    } else if (item.onSale && item.isNew) {
      return Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20 * 0.5,
              vertical: 20 / 4,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red[300],
              ),
              // color: Colors.lime,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Text(
              'New',
              style: TextStyle(fontSize: 13, fontFamily: 'Montserrat-Bold'),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20 * 1.4,
              vertical: 20 / 4,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red[300],
              ),
              // color: Colors.lime,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Text(
              'Скидка ${item.discount}%',
              style: TextStyle(fontSize: 13, fontFamily: 'Montserrat-Bold'),
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
