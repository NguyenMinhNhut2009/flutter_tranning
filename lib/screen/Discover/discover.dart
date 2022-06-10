import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Discover",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset("assets/images/bag-2.svg"),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.4),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                          child: const Text(
                            "What are you looking for?",
                            style: TextStyle(
                                color: Color(0xFfB7B7B7),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/icons/icons_camera.svg",
                            height: 20,
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20, right: 0),
                    controller: _tabController,
                    labelColor: const Color(0xFF101010),
                    unselectedLabelColor: const Color(0xFFB7B7B7),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Nike",
                      ),
                      Tab(
                        text: "Jordan",
                      ),
                      Tab(
                        text: "Adidas",
                      ),
                      Tab(
                        text: "Reebok",
                      ),
                    ]),
              ),
              // Container(
              //   padding: const EdgeInsets.only(left: 20),
              //   height: 300,
              //   width: double.maxFinite,
              //   child: TabBarView(
              //     controller: _tabController,
              //     children: [],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
