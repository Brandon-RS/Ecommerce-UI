import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  static const String routeName = 'cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CartPage'),
      ),
    );
  }
}
