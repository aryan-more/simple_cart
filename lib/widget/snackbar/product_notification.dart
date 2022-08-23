import 'package:flutter/material.dart';

void productAddOrRemoveSnackBar({required BuildContext context, required String productName, bool isAdded = true}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("$productName ${isAdded ? 'Added' : 'Removed'} Succesfully"),
      duration: const Duration(seconds: 1),
    ),
  );
}
