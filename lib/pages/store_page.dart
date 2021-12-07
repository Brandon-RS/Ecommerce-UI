import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  static const String routeName = 'Store';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('StorePage'),
      ),
    );
  }
}
