import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Description:',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Item Description',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
