import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70, left: 30),
          child: Column(
            children: const [
            Text(
              "Your Order",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ]),
        ),
      ),
    );
  }
}
