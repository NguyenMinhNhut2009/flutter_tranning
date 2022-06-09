import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  final height = MediaQuery.of(context).size.height / 812;
  final width = MediaQuery.of(context).size.width / 375;
  return SafeArea(
    child: SingleChildScrollView(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icons/icons_search.svg",
                      height: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "What are you looking for?",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: const Color(0xFFB7B7B7)),
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/icons_camera.svg",
                    height: 20,
                  )
                ]),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 100, bottom: 100),
              width: 315 * width,
              height: 200 * height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/imgHome.png"),
                    fit: BoxFit.cover),
                // borderRadius: BorderRadius.circular(8),
              ),
            ),
            Positioned(
              left: 20,
              top: 85,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF52BD94),
                      ),
                      child: Text(
                        'New',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: const Color(0xFFFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Nike Air Max 98 Noir Black ",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color(0xFFFFFFFF)),
                    ),
                    Text(
                      "89,99 USD",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: const Color(0xFFFFFFFF)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ]),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Brands",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF101010),
              ),
            ),
            Text(
              "SEE ALL",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFB7B7B7),
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ]),
    ),
  );
}
