import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project/WishList/wishList.dart';
import 'package:project/screen/Discover/discover.dart';
import 'package:project/screen/Home/home.dart';
import 'package:project/screen/Order/order.dart';
import 'package:project/screen/Profile/profile.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with TickerProviderStateMixin {
  List<TabMenuItem> itemList = [
    TabMenuItem(
      index: 0,
      icon: 'assets/images/home.svg',
      iconHover: 'assets/images/home2.svg',
    ),
    TabMenuItem(
      index: 1,
      icon: 'assets/images/discover.svg',
      iconHover: 'assets/images/discover2.svg',
    ),
    TabMenuItem(
      index: 2,
      icon: 'assets/images/order.svg',
      iconHover: 'assets/images/order2.svg',
    ),
    TabMenuItem(
      index: 3,
      icon: 'assets/images/heart.svg',
      iconHover: 'assets/images/heart2.svg',
    ),
    TabMenuItem(
      index: 4,
      icon: 'assets/images/profile.svg',
      iconHover: 'assets/images/profile2.svg',
    ),
  ];
  final GlobalKey _keyBottomTabbarey = GlobalKey();
  // ignore: unused_field

  int _selectedIndex = 0;
  // ignore: unused_field
  late TabMenuItem _menuItem;
  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  late BottomNavigationBar bottomNavigationBar;
  Size bottomTabbarHeight = Size.zero;

  @override
  void initState() {

    _menuItem = itemList[0];
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    bottomNavigator();
    return Scaffold(
        body: SafeArea(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: const [
              HomePage(),
              DiscoverPage(),
              OrderPage(),
              WishListPage(),
              ProfilePage(),
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar);
  }

  void bottomNavigator() {
    bottomNavigationBar = BottomNavigationBar(
        selectedFontSize: 12.0,
        backgroundColor: Colors.white,
        // key: _keyBottomTabbar,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        currentIndex: _selectedIndex,
        items: itemList.map((data) {
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
                data.index == _selectedIndex ? data.iconHover : data.icon),
            label: '',
          );
        }).toList());
  }
}

class TabMenuItem {
  int index;
  String icon;
  String iconHover;
  TabMenuItem({
    required this.icon,
    required this.index,
    required this.iconHover,
  });
}
