import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

const icGoogle = "assets/images/ic_google.png";
const icFacebook = "assets/images/ic_facebook.png";
const imgOnboarding1 = "assets/images/onboarding1.png";
const imgOnboarding2 = "assets/images/onboarding2.png";
const imgOnboarding3 = "assets/images/onboarding3.png";

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  List<Slide> slides = [];
  late Function goToTab;

  @override
  void initState() {

    super.initState();
    slides.add(
      Slide(
        title: "Enjoy The New Arrival Product",
        styleTitle: const TextStyle(
          color: Color(0xff3da4ab),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description:
            "Get your dream item easily and safely with Shoesly. and get other interesting offers",
        styleDescription: const TextStyle(
          color: Color(0xfffe9c8f),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        pathImage: "assets/images/onboarding1.png",
      ),
    );
    slides.add(
      Slide(
        title: "COFFEE SHOP",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        styleDescription: const TextStyle(
          color: Color(0xfffe9c8f),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        pathImage: "images/photo_museum.png",
      ),
    );
    slides.add(
      Slide(
        title: "COFFEE SHOP",
        styleTitle: const TextStyle(
          color: Color(0xff3da4ab),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        styleDescription: const TextStyle(
          color: Color(0xfffe9c8f),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        pathImage: "images/photo_coffee_shop.png",
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    goToTab(0);
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
    log("onTabChangeCompleted, index: $index");
  }

  Widget renderNextBtn() {
    return const Icon(
      Icons.navigate_next,
      color: Color(0xffffcc5c),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return const Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return const Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
      overlayColor: MaterialStateProperty.all<Color>(const Color(0x33ffcc5c)),
    );
  }

  List<Widget> renderListCustomTabs() {
    return List.generate(
      slides.length,
      (index) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: const EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                child: Image.asset(
                  slides[index].pathImage!,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  slides[index].title!,
                  style: slides[index].styleTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  slides[index].description ?? '',
                  style: slides[index].styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      renderSkipBtn: renderSkipBtn(),
      // skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: renderNextBtn(),
      // nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: renderDoneBtn(),
      onDonePress: onDonePress,
      // doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: const Color(0xffffcc5c),
      sizeDot: 13.0,
      // typeDotAnimation: DotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: const BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: onTabChangeCompleted,
    );
  }

// class MyButtonSocial extends StatelessWidget {
//   const MyButtonSocial({
//     Key? key,
//     required this.icon,
//     required this.text,
//   }) : super(key: key);

//   final String icon;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(100),
//         border: Border.all(color: const Color(0xFFE7E7E7)),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//                 color: const Color(0xFFF3F3F3),
//               ),
//               padding: const EdgeInsets.all(10),
//               child: Image.asset(
//                 icon,
//                 width: 10.0,
//                 height: 10.0,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 8),
//               child: Text(text),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
}
