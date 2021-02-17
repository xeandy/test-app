import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_functions/cart_functions_cubit.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/presentation/widgets/item_details/item_details_body.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  ItemDetails({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            splashRadius: 25,
            iconSize: 28,
            padding: EdgeInsets.symmetric(horizontal: 20),
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () async {
              await Navigator.of(context).pushNamed('/cart');
              context.read<CartFunctionsCubit>().getUserCart();
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFF1EFF1),
      body: ItemDetailsBody(item: item),
    );
  }
}
