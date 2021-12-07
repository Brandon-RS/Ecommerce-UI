import 'package:flutter/material.dart';

// !Imports
import 'package:ecommerce/pages/account_page.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/more_page.dart';
import 'package:ecommerce/pages/root_page.dart';
import 'package:ecommerce/pages/store_page.dart';

// !Exports
export 'package:ecommerce/pages/account_page.dart';
export 'package:ecommerce/pages/cart_page.dart';
export 'package:ecommerce/pages/home_page.dart';
export 'package:ecommerce/pages/more_page.dart';
export 'package:ecommerce/pages/root_page.dart';
export 'package:ecommerce/pages/store_page.dart';

// !Content

Map<String, WidgetBuilder> getAplicationRoutes() => <String, WidgetBuilder>{
      RootPage.routeName: (BuildContext context) => const RootPage(),
      AccountPage.routeName: (BuildContext context) => const AccountPage(),
      CartPage.routeName: (BuildContext context) => const CartPage(),
      HomePage.routeName: (BuildContext context) => const HomePage(),
      MorePage.routeName: (BuildContext context) => const MorePage(),
      StorePage.routeName: (BuildContext context) => const StorePage(),
    };
