import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(),
          Center(
            child: Text(
              'Adding...',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
