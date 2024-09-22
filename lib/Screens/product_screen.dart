import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    String country = '';
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/cricket_deal_2.jpg',
                        ),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xFFFF2884),
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cricket Deal 2",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("loren inspun hilo wirld",
                        style: TextStyle(color: Colors.grey))
                  ],
                ),
                Column(
                  children: [
                    Text("Rs 840.00",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough)),
                    Text(
                      "Rs 50.00",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFFF2884).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Choose Your Bread",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFFF2884),
                              borderRadius: BorderRadius.circular(18)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Required",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text("Select One",
                        style: TextStyle(
                            color: Color(0xFFFF2884),
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    RadioListTile(
                        value: "italian",
                        groupValue: country,
                        onChanged: (value) {},
                        title: const Text("Italian"),
                        secondary: const Text("Free",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                    RadioListTile(
                        value: "Wheat",
                        groupValue: country,
                        onChanged: (value) {},
                        title: const Text("Wheat"),
                        secondary: const Text("Free",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                    RadioListTile(
                        value: "Seame",
                        groupValue: country,
                        onChanged: (value) {},
                        title: const Text("Seame"),
                        secondary: const Text("Free",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                    RadioListTile(
                        value: "Honey Oat",
                        groupValue: country,
                        onChanged: (value) {},
                        title: const Text("Honey Oat"),
                        secondary: const Text("Free",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Speacial instructions",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 10),
                const Text(
                  "Please let us know f you allergy to anything or if we need to avoid anything",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 10),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      hintText: 'e.g no mayo',
                      contentPadding: const EdgeInsets.all(12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 85,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 1)
            ]),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.grey[400],
                      size: 40,
                    )),
                const SizedBox(width: 10),
                const Text(
                  "1",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Color(0xFFFF2884),
                      size: 40,
                    )),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(width: 35),
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: const Color(0xFFFF2884),
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: const Center(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
