import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/data/models/item/category.dart';

class CategoryCard extends StatelessWidget {
  final List<Category> categories;

  const CategoryCard({Key key, this.categories}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 0),
      itemCount: categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.95,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        Category category = categories[index];
        return Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                '/itemList',
                arguments: category,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF1EFF1),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2,
                      spreadRadius: 0,
                      offset: Offset(2, 2),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/category_example_img.jpg',
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      category.categoryName.getOrCrash(),
                      style: TextStyle(
                          fontSize: 13, fontFamily: 'Montserrat-Medium'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
