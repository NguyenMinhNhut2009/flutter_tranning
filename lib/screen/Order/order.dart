import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
                  children: const [
                    Text(
                      "Your Order",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/icons/icons_search.svg",
                              height: 20,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Search your order ID",
                            style: TextStyle(
                                color: Color(0xFfB7B7B7),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
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
                    labelPadding: const EdgeInsets.only(left: 30, right: 0),
                    controller: _tabController,
                    labelColor: const Color(0xFF101010),
                    unselectedLabelColor: const Color(0xFFB7B7B7),
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(
                        text: "All Status",
                      ),
                      Tab(
                        text: "Waiting Payment",
                      ),
                      Tab(
                        text: "Process",
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
