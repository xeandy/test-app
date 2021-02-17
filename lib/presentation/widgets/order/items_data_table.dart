import 'package:flutter/material.dart';
import 'package:test_app/data/models/user/cart.dart';

class ItemsDataTable extends StatelessWidget {
  const ItemsDataTable({
    Key key,
    @required this.userCart,
  }) : super(key: key);

  final Cart userCart;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: DataTable(
            columnSpacing: 100,
            showBottomBorder: true,
            columns: [
              DataColumn(
                label: Text('Наименование'),
              ),
              DataColumn(
                label: Text('Кол-во'),
              ),
            ],
            rows: userCart.items.toSet().map(
              (item) {
                final orderedQty = userCart.items
                    .where((element) => element.productId == item.productId)
                    .length;
                return DataRow(
                  cells: [
                    DataCell(
                      Center(
                        child: Text(
                          item.name.getOrCrash(),
                        ),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Text(
                          orderedQty.toString(),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
