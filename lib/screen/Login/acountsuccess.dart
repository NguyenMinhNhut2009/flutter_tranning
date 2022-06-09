import 'package:flutter/material.dart';

const imgAccount = "assets/images/createaccount.png";

class AccountSuccess extends StatefulWidget {
  const AccountSuccess({Key? key}) : super(key: key);

  @override
  State<AccountSuccess> createState() => _AccountSuccessState();
}

class _AccountSuccessState extends State<AccountSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 84, right: 84, top: 100),
            child: Image.asset(
              imgAccount,
              width: 208,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 74),
            child: Text(
              "Welcome To The Club Of Shoesly!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF101010)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Text(
              "Your account has ben sucsell",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6F6F6F)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35)
                .copyWith(bottom: 20, top: 200),
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
                  "Let’s Search Shoes!".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
