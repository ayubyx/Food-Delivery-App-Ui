import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_panda/Screens/product_screen.dart';

class PopularTab extends StatelessWidget {
  PopularTab({super.key, required this.popularItems});

  final List<Map<String, String>> popularItems;

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      const SizedBox(height: 20),
      const Text(
        "Popular",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      const Text(
        "Most ordered right now",
        style: TextStyle(fontSize: 14),
      ),
      const SizedBox(height: 10),
      SizedBox(
        height: 190,
        child: GridView.builder(
          itemCount: popularItems.length,
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, i) {
            final item = popularItems[i];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [BoxShadow(blurRadius: 4, spreadRadius: 2)],
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Expanded(
                          child: Text(
                            item['title']!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Text(
                                item['price']!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              if (item.containsKey('oldPrice'))
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    item['price']!,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 13),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
