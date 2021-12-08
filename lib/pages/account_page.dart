import 'package:flutter/material.dart';

import 'package:ecommerce/json/constant.dart';
import 'package:ecommerce/theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  static const String routeName = 'account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const ProfileSection(),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              OptionWidget(icon: FontAwesomeIcons.box, title: 'Orders'),
              OptionWidget(icon: FontAwesomeIcons.mapMarkerAlt, title: 'My Address'),
              OptionWidget(icon: FontAwesomeIcons.cog, title: 'Setttings'),
            ],
          ),
          const SizedBox(height: 30),
          const Divider(thickness: 1),
          const SizedBox(height: 20),
          const ConfigOptionsWidget(),
        ],
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: NetworkImage(profileUrl),
                fit: BoxFit.cover,
                width: 130,
                height: 130,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bruce',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 10),
                Text(
                  'Member since 2020',
                  style: TextStyle(fontSize: 13, color: black.withOpacity(0.7)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('EDIT ACCOUNT', style: TextStyle(fontSize: 13, color: white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ConfigOptionsWidget extends StatelessWidget {
  const ConfigOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        accountList.length,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(accountList[index], style: const TextStyle(fontSize: 16)),
                  Icon(Icons.arrow_forward_ios, color: black.withOpacity(0.5), size: 17)
                ],
              ),
              const SizedBox(height: 15),
              Divider(color: grey.withOpacity(0.8))
            ],
          ),
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  const OptionWidget({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: black),
        const SizedBox(width: 10),
        Text(title, style: const TextStyle(fontSize: 15))
      ],
    );
  }
}
