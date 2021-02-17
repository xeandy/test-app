import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/cart_functions/cart_functions_cubit.dart';
import 'package:test_app/business_logic/cart_watcher/cart_watcher_cubit.dart';
import 'package:test_app/data/models/item/item.dart';

class AddBtn extends StatelessWidget {
  const AddBtn({
    Key key,
    @required this.item,
    @required this.items,
  }) : super(key: key);

  final Item item;
  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: FlatButton(
        padding: EdgeInsets.all(15),
        disabledColor: Colors.blueGrey[400],
        color: Colors.blueGrey[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: items.contains(item)
            ? null
            : () {
                context.read<CartFunctionsCubit>().addToCart(item);

                context.read<CartFunctionsCubit>().getUserCart();
                context.read<CartWatcherCubit>()..checkCart();
              },
        child: items.contains(item)
            ? Text('Added')
            : Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
