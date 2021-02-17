import 'dart:io';

import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  final File image;

  const ItemImg({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (image.path == '') {
      return Icon(
        Icons.add,
        color: Colors.grey,
      );
    } else {
      return Container(
        height: 100,
        width: 100,
        child: Image.file(
          image,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}
