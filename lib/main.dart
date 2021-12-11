import 'package:flutter/material.dart';

import 'package:ecommerce/routes/routes.dart';
import 'package:ecommerce/theme/palette.dart';

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
        primarySwatch: Palette.mainColor,
      ),
      initialRoute: RootPage.routeName,
      routes: getAplicationRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
