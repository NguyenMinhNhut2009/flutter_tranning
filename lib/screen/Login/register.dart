
import 'package:checkbox_formfield/checkbox_formfield.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'acountsuccess.dart';

const icGoogle = "assets/images/ic_google.png";
const icFacebook = "assets/images/ic_facebook.png";

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  // ignore: non_constant_identifier_names
  TextEditingController NameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userController = TextEditingController();

  // ignore: unused_local_variable
  final _formKey = GlobalKey<FormState>();
  bool? checkboxIconFormFieldValue = false;

  return SingleChildScrollView(
    child: Column(children: [
      const Padding(
        padding: EdgeInsets.only(
          top: 94,
          right: 130,
        ),
        child: Text(
          "Create Account",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 90, top: 20),
        child: Text(
          "Please sign up to your Shoesly Account",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 306, top: 40),
        child: Text(
          "Name",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: TextField(
            controller: NameController,
            decoration: const InputDecoration(
              hintText: "pristia|",
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 306, top: 40),
        child: Text(
          "Email",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: TextField(
            controller: userController,
            decoration: const InputDecoration(
              hintText: "pristia@gmail.com",
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(right: 306, top: 40),
        child: Text(
          "Password",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "secret1234567",
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 32),
        child: CheckboxListTileFormField(
          title: const Text(
            'By Signing up, you agree to the Terms of Service and Privacy Policy',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          onSaved: (bool? value) {
            print(value);
          },
          validator: (bool? value) {
            if (value!) {
              return null;
            } else {
              return 'Can not be empty';
            }
          },
          onChanged: (value) {
            // if (value) {
            //   print("ListTile Checked :)");
            // } else {
            //   print("ListTile Not Checked :(");
            // }
          },
          autovalidateMode: AutovalidateMode.always,
          contentPadding: EdgeInsets.all(1),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30)
            .copyWith(bottom: 20, top: 30),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF101010),
            borderRadius: BorderRadius.circular(100),
          ),
          alignment: Alignment.center,
          child: StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountSuccess()));
                  },
                  color: const Color(0xFF101010),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Create account'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              }),
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
                'Have Account?,',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                child: const Text(
                  'Sign Up Now',
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
                          builder: (context) => const LoginPage()));
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    ]),
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
