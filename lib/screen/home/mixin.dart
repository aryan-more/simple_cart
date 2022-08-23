import 'package:flutter/cupertino.dart';
import 'package:simple_cart/screen/cart/cart.dart';

mixin HomeScreenMixin {
  void navigateToShoppingCart(BuildContext context) {
    Navigator.of(context).pushNamed(CartScreen.routeName);
  }
}
