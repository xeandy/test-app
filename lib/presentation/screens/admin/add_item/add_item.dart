import 'package:flutter/material.dart';
import 'package:test_app/presentation/screens/admin/add_item/add_form.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item'),
      ),
      body: Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (context) => AddItemForm(),
          )
        ],
      ),
    );
  }
}
