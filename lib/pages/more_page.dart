import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  static const String routeName = 'More';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MorePage'),
      ),
    );
  }
}
