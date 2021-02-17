
import 'package:flutter/material.dart';
import 'package:focused_menu/modals.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/auth/auth_cubit.dart';
import 'package:test_app/presentation/icons/order_icon.dart';
import 'package:test_app/presentation/widgets/popUpMenu.dart';

class PopUpMenuBtn extends StatelessWidget {
  const PopUpMenuBtn({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FocusedMenuHolder1(
        menuWidth: MediaQuery.of(context).size.width * 0.5,
        animateMenuItems: false,
        duration: Duration(milliseconds: 400),
        blurSize: 1,
        child: Icon(
          Icons.menu,
          size: 30,
        ),
        onPressed: () {},
        menuItems: [
          FocusedMenuItem(
              title: Text('Профиль'),
              onPressed: () {
                Navigator.of(context).pushNamed('/userProfile');
              },
              trailingIcon: Icon(Icons.person)),
          FocusedMenuItem(
              title: Text('Мои Заказы'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/userOrders');
              },
              trailingIcon: Icon(MyIcon.list_ordered)),
          FocusedMenuItem(
              title: Text('О Нас'),
              onPressed: () {
                print('ok');
              },
              trailingIcon: Icon(Icons.verified_user)),
          FocusedMenuItem(
              title: Text('Выйти'),
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              trailingIcon: Icon(Icons.exit_to_app)),
        ],
      ),
    );
  }
}
