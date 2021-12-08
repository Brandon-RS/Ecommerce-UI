import 'package:flutter/material.dart';

import 'package:ecommerce/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RootPage.routeName,
      routes: getAplicationRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
