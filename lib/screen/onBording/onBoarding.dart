import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Login/Login.dart';

const icGoogle = "assets/images/ic_google.png";
const icFacebook = "assets/images/ic_facebook.png";
const imgOnboarding1 = "assets/images/onboarding1.png";
const imgOnboarding2 = "assets/images/onboarding2.png";
const imgOnboarding3 = "assets/images/onboarding3.png";

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _pageController = PageController(initialPage: 0);
  int index = 0;
  @override
  void initState() {
    super.initState();
    index = _pageController.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
            children: [
              pageView(
                  image: 'assets/images/onboarding1.png',
                  title: 'Enjoy The New Arrival Product',
                  index: index),
              pageView(
                  image: 'assets/images/onboarding2.png',
                  title: 'Guaranteed Safe Delivery',
                  index: index),
              pageView(
                  image: 'assets/images/onboarding3.png',
                  title: 'Goods Arrived On Time',
                  index: index),
            ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 35),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                    child: Text(
                  'Get Started'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white, fontSize: 14),
                )),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: const [
                  Expanded(
                      child: MyButtonSocial(
                    icon: icGoogle,
                    text: 'Google',
                  )),
                  SizedBox(width: 15),
                  Expanded(
                      child: MyButtonSocial(
                    icon: icFacebook,
                    text: 'Facebook',
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageView({
    required String image,
    required String title,
    required int index,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(child: Image.asset(image)),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RichText(
                text: TextSpan(
                  text: title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 36, fontWeight: FontWeight.w600),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child: RichText(
                text: TextSpan(
                  text:
                      'Get your dream item easily and safely with Shoesly. and get other interesting offers',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14, color: const Color(0xff6F6F6F)),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        processOnboarding(index: index),
        const SizedBox()
      ],
    );
  }

  Widget processOnboarding({required int index}) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: index == 0 ? 25 : 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: index == 0
                    ? 0
                    : index == 1
                        ? 25
                        : 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              AnimatedContainer(
                margin: const EdgeInsets.only(right: 5),
                height: 10,
                width: index == 0
                    ? 0
                    : index == 1
                        ? 0
                        : 25,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyButtonSocial extends StatelessWidget {
  const MyButtonSocial({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: const Color(0xFFE7E7E7)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFFF3F3F3),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                icon,
                width: 10.0,
                height: 10.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}
