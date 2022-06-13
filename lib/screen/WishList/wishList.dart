import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WishListPage extends StatefulWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Wishlist",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset("assets/images/bag-2.svg"),
            ),
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.black.withOpacity(0.4),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/icons_search.svg",
                  height: 20,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Search your wishlist product",
                  style: TextStyle(
                      color: Color(0xFfB7B7B7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ]),
          ),
        ),
      ]),
    ),
  );
}
