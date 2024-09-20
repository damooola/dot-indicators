import 'package:dot_indicators/pages/first_page.dart';
import 'package:dot_indicators/pages/fourth_page.dart';
import 'package:dot_indicators/pages/second_page.dart';
import 'package:dot_indicators/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 550,
            child: PageView(
              controller: pageController,
              children: const [
                FirstPage(),
                SecondPage(),
                ThirdPage(),
                FourthPage()
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: const ExpandingDotsEffect(
                expansionFactor: 2,
                activeDotColor: Colors.deepOrange,
                dotColor: Colors.grey,
                dotWidth: 35,
                dotHeight: 35),
          )
        ],
      ),
    );
  }
}
