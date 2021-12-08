import 'package:flutter/material.dart';

import 'package:ecommerce/json/constant.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  static const String routeName = 'cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          Column(
            children: List.generate(cartList.length, (index) => CardItem(index: index)),
          ),
          Divider(color: grey.withOpacity(0.8)),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text("Do you have a promotion code?", style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 15),
          Divider(color: grey.withOpacity(0.8)),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Delivery", style: TextStyle(fontSize: 16)),
                Text("Standard - Free", style: TextStyle(fontSize: 16))
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 50,
            decoration: BoxDecoration(color: black, borderRadius: BorderRadius.circular(25)),
            alignment: Alignment.center,
            child: Text(
              "Buy for \$50".toUpperCase(),
              style: const TextStyle(color: white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 140,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage(cartList[index]['img']), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartList[index]['name'],
                  style: const TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 10),
                Text(
                  "ref " + cartList[index]['ref'],
                  style: TextStyle(fontSize: 13, color: black.withOpacity(0.7)),
                ),
                const SizedBox(height: 10),
                Text(cartList[index]['size'], style: const TextStyle(fontSize: 22)),
                const SizedBox(height: 40),
                AddMoreButtons(index: index),
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class AddMoreButtons extends StatelessWidget {
  const AddMoreButtons({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(cartList[index]['price'], style: const TextStyle(fontSize: 22)),
        const SizedBox(width: 20),
        Row(
          children: [
            buttonWidget(icon: FontAwesomeIcons.minus),
            const SizedBox(width: 10),
            const Text("1", style: TextStyle(fontSize: 15)),
            const SizedBox(width: 10),
            buttonWidget(icon: FontAwesomeIcons.plus),
          ],
        )
      ],
    );
  }

  Container buttonWidget({required IconData icon}) => Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: black.withOpacity(0.5)),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 10,
            color: black.withOpacity(0.5),
          ),
        ),
      );
}
