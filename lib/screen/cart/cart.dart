import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_cart/model/cart.dart';
import 'package:simple_cart/widget/list_tile/product_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    final userCart = context.watch<UserCart>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: userCart.cart.isEmpty
          ? const Center(
              child: Text("Cart is Empty"),
            )
          : ListView.builder(
              itemBuilder: (context, index) => ProductTile(
                productName: userCart.cart[index],
              ),
              itemCount: userCart.cart.length,
            ),
    );
  }
}
