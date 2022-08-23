import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_cart/model/cart.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, required this.productName}) : super(key: key);
  final String productName;

  @override
  Widget build(BuildContext context) {
    final userCart = context.watch<UserCart>();
    final bool inCart = userCart.cart.contains(productName);

    return ListTile(
      title: Text(productName),
      trailing: ElevatedButton(
        child: Text(inCart ? "Remove" : "Add"),
        onPressed: () => inCart ? userCart.remove(productName, context) : userCart.add(productName, context),
      ),
    );
  }
}
