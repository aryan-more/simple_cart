import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_cart/model/cart.dart';
import 'package:simple_cart/screen/home/home.dart';
import 'package:simple_cart/utils/route.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UserCart>(
          create: (context) => UserCart(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: onRouteGenrate,
      home: HomeScreen(),
    );
  }
}
