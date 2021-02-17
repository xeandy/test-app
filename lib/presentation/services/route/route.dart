import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/item_watcher/item_watcher_cubit.dart';
import 'package:test_app/presentation/screens/admin/add_item/add_item.dart';
import 'package:test_app/presentation/screens/admin/admin.dart';
import 'package:test_app/presentation/screens/cart.dart';
import 'package:test_app/presentation/screens/checkout.dart';
import 'package:test_app/presentation/screens/chek_role.dart';
import 'package:test_app/presentation/screens/home.dart';
import 'package:test_app/presentation/screens/initial_screen.dart';
import 'package:test_app/presentation/screens/item_details.dart';
import 'package:test_app/presentation/screens/item_list.dart';
import 'package:test_app/presentation/screens/register.dart';
import 'package:test_app/presentation/screens/user_orders.dart';
import 'package:test_app/presentation/screens/user_profile.dart';

import '../../../injection.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => InitialScreen(),
        );
        break;
      case '/checkRole':
        return MaterialPageRoute(
          builder: (_) => CheckRole(),
        );
        break;
      case '/admin':
        return MaterialPageRoute(
          builder: (_) => Admin(),
        );

        break;
      case '/addItem':
        return MaterialPageRoute(
          builder: (_) => AddItem(),
        );
        break;
      case '/homeScreen':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
        break;
      case '/register':
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );
        break;

      case '/itemList':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: getIt<ItemWatcherCubit>()..getItems(args),
            child: ItemList(
              category: args,
            ),
          ),
        );
        break;

      case '/cart':
        return MaterialPageRoute(
          builder: (_) => UserCart(),
        );
        break;

      case '/userProfile':
        return MaterialPageRoute(
          builder: (_) => UserProfile(),
        );
        break;

      case '/itemDetails':
        return MaterialPageRoute(
          builder: (_) => ItemDetails(
            item: args,
          ),
        );
        break;

      case '/submitOrder':
        return MaterialPageRoute(
          builder: (_) => Checkout(
            userCart: args,
          ),
        );
        break;
      case '/userOrders':
        return MaterialPageRoute(
          builder: (_) => UserOrders(),
        );
        break;

      default:
        return null;
    }
  }
}
