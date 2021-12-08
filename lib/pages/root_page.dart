import 'package:flutter/material.dart';

import 'package:ecommerce/json/constant.dart';
import 'package:ecommerce/pages/account_page.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/more_page.dart';
import 'package:ecommerce/pages/store_page.dart';
import 'package:ecommerce/theme/colors.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  static const String routeName = 'Root';

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppbar(),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  getAppbar() {
    switch (activeTab) {
      case 0:
        return null;
      case 1:
        return null;
      case 2:
        return customAppBar('ACCOUNT');
      case 3:
        return customAppBar('CART');
      case 4:
        return customAppBar('MORE');
      default:
    }
  }

  AppBar customAppBar(String text) => AppBar(
        elevation: 0.8,
        backgroundColor: white,
        title: Text(text, style: const TextStyle(color: black)),
      );

  Widget getBody() => IndexedStack(
        index: activeTab,
        children: const [
          HomePage(),
          StorePage(),
          AccountPage(),
          CartPage(),
          MorePage(),
        ],
      );

  Widget getFooter() => Container(
        decoration: BoxDecoration(color: white, border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              itemsTab.length,
              (index) => IconButton(
                    icon: Icon(
                      itemsTab[index]['icon'],
                      size: itemsTab[index]['size'],
                      color: activeTab == index ? accent : black,
                    ),
                    onPressed: () => setState(() => activeTab = index),
                  )),
        ),
      );
}
