import 'package:flutter/material.dart';
import 'package:simple_cart/widget/snackbar/product_notification.dart';

class UserCart extends ChangeNotifier {
  final List<String> _cartItems = [];

  List<String> get cart => _cartItems;

  void add(String newItem, BuildContext context) {
    _cartItems.add(newItem);
    productAddOrRemoveSnackBar(context: context, productName: newItem);
    notifyListeners();
  }

  void remove(String toRemove, BuildContext context) {
    _cartItems.remove(toRemove);
    productAddOrRemoveSnackBar(context: context, productName: toRemove, isAdded: false);

    notifyListeners();
  }
}
