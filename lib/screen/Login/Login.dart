import 'package:flutter/material.dart';
import 'package:project/screen/Home/home.dart';
import 'package:project/screen/Home/main_home.dart';
import 'package:project/screen/Login/register.dart';

const icGoogle = "assets/images/ic_google.png";
const icFacebook = "assets/images/ic_facebook.png";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  // String email;
  // String

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
  // ignore: unused_local_variable
  bool _isVaild = false;

  // ignore: unused_local_variable
  String _email;
  // ignore: unused_local_variable
  String _password;
  // ignore: non_constant_identifier_names, unused_local_variable
  bool _ShowPassword = true;
  // ignore: unused_local_variable
  bool _isEmailVaild = false;
  // ignore: unused_local_variable
  bool _isPasswordVaild = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  return SingleChildScrollView(
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 94,
            right: 280,
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
            right: 90,
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
          padding: EdgeInsets.only(left: 30, top: 70, right: 30),
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
              // border: BorderRadius.,
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
            controller: passwordController,
            decoration: const InputDecoration(
                hintText: 'secret1234567', suffix: Icon(Icons.visibility)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 270),
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainHomePage(),
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
                'Log In'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white, fontSize: 14),
              )),
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
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Row(
              children: [
                const Text(
                  'Join with us, ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
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
