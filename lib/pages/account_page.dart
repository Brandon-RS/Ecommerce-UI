import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  static const String routeName = 'account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AccountPage'),
      ),
    );
  }
}
