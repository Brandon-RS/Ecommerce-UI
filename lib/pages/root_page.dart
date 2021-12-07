import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  static const String routeName = 'Root';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('RootPage'),
      ),
    );
  }
}
