import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/screen/Profile/setting.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.only(top: 74),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Image.asset(
            "assets/images/profile.png",
            height: 100,
            width: 100,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 0),
          child: Center(
            child: Text(
              "Hello, Pristia",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 0, bottom: 30),
          child: Center(
            child: Text(
              "Semarang, Indonesia",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0x0ff27a83)),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'On Going Order'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white, fontSize: 14),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 50),
                child: Text(
                  "Detail Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFB7B7B7),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  "Setting",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFFB7B7B7),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 35),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Language",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Currency",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ]),
        ),
      ]),
    ),
  );
}
