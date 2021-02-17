import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_app/data/models/item/item.dart';
import 'package:test_app/presentation/widgets/item_list/sale_widget.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    Key key,
    @required this.items,
  }) : super(key: key);
  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      padding: EdgeInsets.only(bottom: 25),
      children: items.map(
        (item) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 160,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed('/itemDetails', arguments: item);
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.blueGrey[300],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 27,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Hero(
                      tag: '${item.productId}',
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 160,
                          width: 200,
                          child: CachedNetworkImage(
                            filterQuality: FilterQuality.medium,
                            fit: BoxFit.cover,
                            imageUrl: item.itemImg.getOrCrash(),
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      height: 136,
                      width: size.width - 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SaleWidget(item: item),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              item.name.getOrCrash(),
                              style: TextStyle(
                                  fontSize: 13, fontFamily: 'Montserrat-Bold'),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20 * 1.5,
                              vertical: 20 / 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.yellow[300],
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(22),
                                topLeft: Radius.circular(22),
                              ),
                            ),
                            child: item.onSale
                                ? Column(
                                    children: [
                                      Text(
                                        item.salePrice.toString(),
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Montserrat-Bold',
                                        ),
                                      ),
                                      Text(
                                        item.price.toString(),
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Montserrat-Bold',
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  )
                                : Text(
                                    item.price.toString(),
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat-Bold',
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
