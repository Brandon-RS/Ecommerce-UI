import 'dart:async';

import 'package:flutter/material.dart';

import 'package:ecommerce/json/constant.dart';
import 'package:ecommerce/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          TopBanner(),
          SizedBox(height: 40),
          TitleSection(title: 'Categories'),
          SizedBox(height: 20),
          CategorieItems(),
          SizedBox(height: 20),
          TitleSection(title: 'Recommended for you'),
          SizedBox(height: 20),
          CardsSection(list: recommends),
          SizedBox(height: 40),
          CustomSlider(),
          SizedBox(height: 40),
          TitleSection(title: 'Recent viewed'),
          SizedBox(height: 20),
          CardsSection(list: recently),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int currentIndex = 0;
  late PageController pageController;
  late Timer timer;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    timer = sliderTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    timer.cancel();
    super.dispose();
  }

  int counter = 0;

  Timer sliderTimer() {
    return Timer.periodic(const Duration(seconds: 10), (timer) {
      pageController.nextPage(duration: const Duration(milliseconds: 1200), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 230,
      child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            // itemCount: slider.length,
            controller: pageController,
            onPageChanged: (index) => setState(() => currentIndex = index % slider.length),
            itemBuilder: (_, index) {
              return Image(
                fit: BoxFit.cover,
                image: NetworkImage(slider[index % slider.length]),
              );
            },
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Row(
              children: List.generate(
                slider.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  margin: const EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: white,
                  ),
                  width: currentIndex == index ? 18 : 7,
                  height: 7,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardsSection extends StatelessWidget {
  const CardsSection({Key? key, required this.list}) : super(key: key);

  final List<Map<String, Object>> list;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('${list[index]['imgUrl']}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${list[index]['title']}',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: black, height: 1.5),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '\$ ${list[index]['price']}',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: grey, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategorieItems extends StatelessWidget {
  const CategorieItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Container(
            padding: const EdgeInsets.only(left: 15),
            width: 180,
            height: 220,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('${categories[index]['imgUrl']}'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '${categories[index]['title']}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: black.withOpacity(0.65)),
          ),
          Row(
            children: const [
              Text('All', style: TextStyle(color: grey)),
              SizedBox(width: 5),
              Icon(Icons.arrow_forward_ios, color: grey, size: 16)
            ],
          ),
        ],
      ),
    );
  }
}

class TopBanner extends StatelessWidget {
  const TopBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Stack(
      children: [
        Image(
          width: size.width,
          height: 500,
          fit: BoxFit.cover,
          image: const NetworkImage(homeImg),
        ),
        Padding(
          padding: EdgeInsets.only(top: padding.top, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.favorite, color: white, size: 28),
              SizedBox(width: 15),
              Icon(Icons.search, color: white, size: 28),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Winter Collection",
                  style: TextStyle(fontSize: 25, color: white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'DISCOVER',
                      style: TextStyle(fontSize: 15, color: white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios, color: white, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
