import 'package:flutter/material.dart';
import 'package:food_panda/Data/food_list.dart';
import 'package:food_panda/Screens/popular_tab.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    tabController.addListener(handledTabSelection);
  }

  void handledTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFFFF2884),
                )),
            title: const Column(
              children: [
                Text(
                  "Delivery",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "15 - 30 min",
                  style: TextStyle(color: Color(0xFFFF2884), fontSize: 13),
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Color(0xFFFF2884),
                          size: 25,
                        )),
                    const SizedBox(width: 2),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Color(0xFFFF2884),
                          size: 25,
                        )),
                    const SizedBox(width: 2),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Color(0xFFFF2884),
                          size: 25,
                        )),
                  ],
                ),
              ),
            ],
          ),
          body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Row(
                children: [
                  Image.asset(
                    'assets/subway_logo.jpg',
                    width: 80,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Subway",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                        "1km away | Rs 99.00 Delivery | Rs 240.00 Minimum Service free applies"),
                  ),
                  Text(
                    "More Info",
                    style: TextStyle(
                        color: Color(0xFFFF2884),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.star_border_outlined,
                            color: Color(0xFFFF2884)),
                        SizedBox(width: 10),
                        Text("3.9",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(width: 5),
                        Text("1000+ ranges",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ),
                  Text(
                    "See Services",
                    style: TextStyle(
                        color: Color(0xFFFF2884),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.timer_sharp, color: Color(0xFFFF2884)),
                        SizedBox(width: 10),
                        Text("Delivery",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(width: 5),
                        Text("15 - 30 min",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                      ],
                    ),
                  ),
                  Text(
                    "Change",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset('assets/voucher_panda.png', width: 25),
                  const SizedBox(width: 10),
                  const Text(
                    "Avialable deals",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF2884).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/percentage_icon.png',
                                width: 20),
                            const SizedBox(width: 5),
                            const Text("Rs. 329 off",
                                style: TextStyle(
                                    color: Color(0xFFFF2884),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                            "Mix order Rs. 329 valid for serieted items Auto-applied.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TabBar(
                  controller: tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  labelColor: const Color(0xFFFF2884),
                  indicatorColor: const Color(0xFFFF2884),
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: const [
                    Tab(text: "Popular"),
                    Tab(text: "Cricket Deals"),
                    Tab(text: "Strong Pepsi Deals"),
                    Tab(text: "All New"),
                  ]),
              Center(
                  child:  [
                PopularTab(popularItems: popularItems,),
                Center(child: Text("Cricket Deals")),
                Center(child: Text("Strong Pepsi Deals")),
                Center(child: Text("All New"))
              ][tabController.index])
            ]),
          )),
    );
  }
}
