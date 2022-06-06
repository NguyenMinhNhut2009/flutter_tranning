import 'package:flutter/material.dart';

const icGoogle = "assets/images/ic_google.png";
const icFacebook = "assets/images/ic_facebook.png";
const imgOnboarding3 = "assets/images/onboarding3.png";

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 126, bottom: 70),
            child: Image.asset(
              imgOnboarding3,
              width: 236,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              'Goods Arrived On Time',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(top: 20.0, bottom: 107, left: 45, right: 45),
            child: Text(
              'Get your dream item easily and safely with Shoesly. and get other interesting offers',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF101010),
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Get Started'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(children: const [
              Expanded(
                  child: MyButtonSocial(
                icon: icGoogle,
                text: 'Google',
              )),
              Expanded(
                  child: MyButtonSocial(
                icon: icFacebook,
                text: 'Facebook',
              )),
            ]),
          )
        ],
      )),
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
        border: Border.all(
          color: const Color(0xffE7E7E7),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
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
          )
        ]),
      ),
    );
  }
}
