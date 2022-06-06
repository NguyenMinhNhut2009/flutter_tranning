import 'package:flutter/material.dart';
import 'package:project/register.dart';

const icGoogle = "assets/images/ic_google.png";
const icFacebook = "assets/images/ic_facebook.png";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  return SingleChildScrollView(
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 94,
          ),
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 30,
            right: 30,
          ),
          child: Text(
            'Please sign up to your Shoesly Account',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 20, right: 30),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              )),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'pristia@gmail.com',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              )),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'secret1234567',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30)
              .copyWith(bottom: 20, top: 190),
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
                'Login'.toUpperCase(),
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
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Container(
            child: Row(
              children: [
                const Text(
                  'Join with us, ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
      ],
    ),
  );
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
