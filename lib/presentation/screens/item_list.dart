import 'package:flutter/material.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/presentation/widgets/item_list/item_list_body.dart';

class ItemList extends StatelessWidget {
  final Category category;

  const ItemList({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: ItemListBody(),
    );
  }
}
