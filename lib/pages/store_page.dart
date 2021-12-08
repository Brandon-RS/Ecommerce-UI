import 'package:flutter/material.dart';

import 'package:ecommerce/json/constant.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  static const String routeName = 'Store';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: const [
                  Text('Phnom Penh', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.mapMarkedAlt, size: 20),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Find all \nstores here',
              style: TextStyle(fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Flexible(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: grey.withOpacity(0.2),
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: const TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search, size: 20, color: primary),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(color: black, shape: BoxShape.circle),
                  child: const Icon(FontAwesomeIcons.mapMarkedAlt, color: white, size: 20),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Divider(color: grey.withOpacity(0.8)),
            const SizedBox(height: 20),
            const Text(
              'All stores',
              style: TextStyle(fontSize: 22, color: black),
            ),
            const SizedBox(height: 20),
            Column(
              children: List.generate(
                storeList.length,
                (index) => StoreCard(index: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  const StoreCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      height: 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(storeList[index]['img']),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: black.withOpacity(0.35),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: 65,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: white,
                    ),
                    child: CheckAvailability(index: index),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(FontAwesomeIcons.mapMarkedAlt, size: 20, color: white),
                      const SizedBox(width: 10),
                      Text(
                        storeList[index]['name'],
                        style: const TextStyle(fontSize: 18, color: white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CheckAvailability extends StatelessWidget {
  const CheckAvailability({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          storeList[index]['open'] == 0 ? 'CLOSE' : 'OPEN',
          style: const TextStyle(fontSize: 10, color: black, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: storeList[index]['open'] == 0 ? Colors.redAccent : Colors.green,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
