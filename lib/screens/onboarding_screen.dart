import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cScaffoldBackgroundColor,
      body: Container(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            pageContent(
              title: 'RELIABLE',
              imagePath: 'assets/images/slider/1.png',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus tortor sit amet facilisis congue.',
            ),
            pageContent(
              title: 'FAST',
              imagePath: 'assets/images/slider/2.png',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a.',
            ),
            pageContent(
              title: 'CUSTOMER SUPPORT',
              imagePath: 'assets/images/slider/3.png',
              description:
                  'Nam posuere ac turpis sodales maximus. Maecenas nec sem iaculis, accumsan nibh non, porta urna. Phasellus in eros vehicula dui molestie tristique.',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                if (!mounted) return;
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                primary: Colors.white,
                backgroundColor: cLightReddishColor,
                minimumSize: const Size.fromHeight(80),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 18.0),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              height: 80.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => controller.jumpToPage(2),
                    child: const Text(
                      'SKIP',
                      style: TextStyle(color: cdarkBlackColor),
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        spacing: 16.0,
                        dotColor: Color(0x77E59E8B),
                        activeDotColor: cDarkReddishColor,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(color: cdarkBlackColor),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget pageContent({
    required String title,
    required String imagePath,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.75,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
