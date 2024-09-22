import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_panda/Data/food_list.dart';
import 'package:food_panda/Screens/shop_screen.dart';
import 'package:food_panda/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        backgroundColor: Colors.grey[200],
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 130,
              backgroundColor: const Color(0xFFFF2884),
              leading: IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: const Icon(
                    size: 30,
                    Icons.menu,
                    color: Colors.white,
                  )),
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "you location or adress will be here...",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 30,
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
                Stack(children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 30,
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      )),
                  Positioned(
                    right: 10,
                    top: 25,
                    child: Container(
                        width: 16,
                        height: 16,
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          "2",
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFFFF2884)),
                        )),
                  ),
                ])
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 12),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24)),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: "Search for shops & restaurants",
                              prefixIcon: Icon(
                                CupertinoIcons.search,
                                color: Colors.black54,
                                size: 30,
                              ),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 12)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 365,
                      child: StaggeredGrid.count(
                        crossAxisCount: 4,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: [
                          StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 3.1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.15, color: Colors.black45),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foods[0]['title']!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(foods[0]['subtitle']!,
                                              style: const TextStyle(
                                                  fontSize: 12)),
                                          const SizedBox(height: 85),
                                          Image.asset(
                                            foods[0]['imagePath']!,
                                            fit: BoxFit.cover,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 2.05,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.15, color: Colors.black45),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foods[1]['title']!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(foods[1]['subtitle']!,
                                              style: const TextStyle(
                                                  fontSize: 12)),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 1,
                                                      vertical: 16),
                                              child: Image.asset(
                                                foods[1]['imagePath']!,
                                                height: 80,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 1.05,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.15, color: Colors.black45),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foods[2]['title']!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(foods[2]['subtitle']!,
                                              style: const TextStyle(
                                                  fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        foods[2]['imagePath']!,
                                        height: 65,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 1.05,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.15, color: Colors.black45),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foods[3]['title']!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(foods[3]['subtitle']!,
                                              style: const TextStyle(
                                                  fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Image.asset(
                                      foods[3]['imagePath']!,
                                      height: 56,
                                    ),
                                  ],
                                ),
                              )),
                          StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 1.06,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 0.15, color: Colors.black45),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foods[4]['title']!,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(foods[4]['subtitle']!,
                                              style: const TextStyle(
                                                  fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                    //const SizedBox(width: 10),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Image.asset(
                                        foods[4]['imagePath']!,
                                        height: 50,
                                        width: 43,
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Free delivery",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            height: 240,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: restaurants.length,
                                itemBuilder: (context, i) {
                                  return buildRestaurantItem(restaurants[i], context);
                                }),
                          ),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

Widget buildRestaurantItem(Map<String, dynamic> restaurants, context) {
  return InkWell(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder:(context) =>
    const Shop()));
    },
    child: Container(
      height: 250,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.asset(
                  restaurants['imagePath'],
                  height: 150,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (restaurants['discount'].isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: const BoxDecoration(
                            color: Color(0xFFFF2884),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8))),
                        child: Text(
                          restaurants['discount'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    //const SizedBox(height: 20),
                    Container(
                      margin: restaurants['discount'].isNotEmpty
                          ? const EdgeInsets.only(top: 5)
                          : const EdgeInsets.only(),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: const BoxDecoration(
                          color: Color(0xFFFF2884),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Text(
                        restaurants['deliveryType'],
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(restaurants['name'],
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 60),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            restaurants['rating'],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '(${restaurants['reviews']})',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                      '${restaurants['minOrder']}  -  ${restaurants['cuisine']}'),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer_outlined,
                        size: 16,
                      ),
                      const SizedBox(width: 2),
                      Text(restaurants['time']),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.delivery_dining_rounded,
                        size: 16,
                        color: Color(0xFFFF2884),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        restaurants['deliveryType'],
                        style: const TextStyle(
                            color: Color(0xFFFF2884),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    ),
  );
}
