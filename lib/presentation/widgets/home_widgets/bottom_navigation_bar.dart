
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:test_app/presentation/icons/bottom_navigation_icon.dart';

class BtmNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.blueGrey[700],

          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          onTap: (index) async {
            if (index == 3) {
              Navigator.of(context).pushNamed('/cart');
            } else {
              context.read<BottomNavigationCubit>().onTap(index);
            }
          },
          currentIndex: context.watch<BottomNavigationCubit>().currentIndex,
          type: BottomNavigationBarType.fixed,
          // selectedFontSize: 15,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.office),
              label: 'Office',
            ),
            BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.house),
              label: 'House',
            ),
            BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.horeca),
              label: 'HoReCa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        );
      },
    );
  }
}
