import 'package:flutter/material.dart';
import 'package:simple_cart/screen/cart/cart.dart';
import 'package:simple_cart/screen/home/home.dart';

Route<dynamic> onRouteGenrate(RouteSettings settings) {
  switch (settings.name) {
    case CartScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const CartScreen(),
        settings: settings,
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
        settings: settings,
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Center(
          child: Text("Something Went Wrong"),
        ),
      );
  }
}
