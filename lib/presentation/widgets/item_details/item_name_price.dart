import 'package:flutter/material.dart';
import 'package:test_app/data/models/item/item.dart';

class ItemNamePrice extends StatelessWidget {
  const ItemNamePrice({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 470,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Name',
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            item.name.getOrCrash(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.4,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Price',
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            item.onSale ? item.salePrice.toString() : item.price.toString(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
