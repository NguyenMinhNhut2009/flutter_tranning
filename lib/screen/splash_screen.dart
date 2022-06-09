import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/main.dart';

import 'onBording/onBoarding.dart';

// ignore: constant_identifier_names
const ic_Splach = "assets/images/ic_splach.png";

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: override_on_non_overriding_member
  Timer startTime() {
    var _duration = const Duration(seconds: 2);
    // ignore: unnecessary_new
    return new Timer(_duration, navigationPage);
  }

  Future navigationPage() async {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const OnBoarding()),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 394, left: 121, right: 121),
          child: Image.asset(
            ic_Splach,
            width: 133,
          ),
        ),
      ),
    );
  }
}
