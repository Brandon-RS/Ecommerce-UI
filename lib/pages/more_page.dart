import 'package:flutter/material.dart';

import 'package:ecommerce/json/constant.dart';
import 'package:ecommerce/theme/colors.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  static const String routeName = 'More';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(image: NetworkImage(profileUrl), fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                children: const [
                  Text("Daniel", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                  SizedBox(height: 7),
                  Text("4 Orders", style: TextStyle(fontSize: 15, color: grey)),
                ],
              )
            ],
          ),
          const SizedBox(height: 5),
          Divider(color: grey.withOpacity(0.8)),
          const SizedBox(height: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              menusMore.length,
              (index) => ListTile(
                contentPadding: const EdgeInsets.only(bottom: 10),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      menusMore[index],
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23, color: black.withOpacity(0.7)),
                    ),
                    Icon(Icons.arrow_forward_ios, color: black.withOpacity(0.7)),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomButton(text: 'Settings'),
              CustomButton(text: 'Sign Out'),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: (size.width - 100) / 2,
      height: 45,
      decoration: BoxDecoration(color: black, borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(fontSize: 15, color: white),
      ),
    );
  }
}
