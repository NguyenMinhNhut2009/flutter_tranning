import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/screen/Login/Login.dart';
import 'package:project/screen/Profile/profile.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     backgroundColor: Color(0xFFFFFFFF),
      //     title: Row(
      //       children: const [
      //         Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Icon(
      //             Icons.arrow_back_ios,
      //             color: Color(0xFF101010),
      //           ),
      //         ),
      //         Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Center(
      //             child: Text(
      //               "Setting",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w600,
      //                   color: Color(0xFF101010)),
      //             ),
      //           ),
      //         ),
      //       ],
      //     )),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFF101010),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 120),
                child: Text(
                  "Setting",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, right: 270),
          child: Text(
            "My Account",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFFB7B7B7)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Address Book",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SvgPicture.asset("assets/images/book-square.svg"),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Payment Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SvgPicture.asset("assets/images/card.svg"),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Notification",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: SvgPicture.asset("assets/images/notification.svg"),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40, right: 270),
          child: Text(
            "Information",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFFB7B7B7)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Version",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: SvgPicture.asset("assets/images/mobile.svg"),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Term & Condition",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: SvgPicture.asset("assets/images/note.svg"),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: SvgPicture.asset("assets/images/shield-tick.svg"),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 250, right: 270),
            child: Text(
              "Sign Out",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFF4C5E)),
            ),
          ),
        ),
      ]),
    ),
  );
}
