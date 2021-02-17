import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:test_app/business_logic/cart_functions/cart_functions_cubit.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/presentation/widgets/item_details/add_btn.dart';
import 'package:test_app/presentation/widgets/item_details/item_description.dart';
import 'package:test_app/presentation/widgets/item_details/item_name_price.dart';

class ItemDetailsBody extends StatelessWidget {
  final Item item;

  ItemDetailsBody({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: GradientColors.gradeGrey,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            ItemNamePrice(item: item),
            Positioned(
              top: 100,
              right: -50,
              child: Hero(
                tag: item.productId,
                child: CachedNetworkImage(
                  imageUrl: item.itemImg.getOrCrash(),
                  height: size.width * 0.9,
                  width: size.width * 0.9,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ItemDescription(),
        SizedBox(
          height: 20,
        ),
        BlocBuilder<CartFunctionsCubit, CartFunctionsState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(color: Colors.blue),
              cartLoaded: (state) {
                return AddBtn(
                  item: item,
                  items: state.userCart.items,
                );
              },
            );
          },
        )
      ],
    );
  }
}
