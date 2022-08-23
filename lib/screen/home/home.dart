import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_cart/model/cart.dart';
import 'package:simple_cart/screen/home/mixin.dart';
import 'package:simple_cart/widget/list_tile/product_tile.dart';

class HomeScreen extends StatelessWidget with HomeScreenMixin {
  static const routeName = "/home";
  HomeScreen({Key? key}) : super(key: key) {
    for (var index = 0; index < 5; index++) {
      products.add("Product $index");
    }
  }

  final List<String> products = [];

  @override
  Widget build(BuildContext context) {
    final userCart = context.watch<UserCart>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Cart"),
        actions: [
          Badge(
            badgeColor: Colors.white,
            position: BadgePosition.topStart(top: 0, start: 0),
            badgeContent: Text(userCart.cart.length.toString()),
            showBadge: userCart.cart.isNotEmpty,
            child: IconButton(
              onPressed: () => navigateToShoppingCart(context),
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ProductTile(
          productName: products[index],
        ),
        itemCount: products.length,
      ),
    );
  }
}
