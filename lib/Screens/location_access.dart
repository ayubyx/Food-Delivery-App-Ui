import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_panda/Screens/auth_screen.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 150),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 99),
            child: Image.asset("assets/foodpanda_location.png", width: 690),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Allow location access on the next screen for:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF2885).withOpacity(0.15),
                            shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.delivery_dining_outlined,
                            size: 27,
                            color: Color(0xFFFF2885),
                          ),
                        )),
                    const SizedBox(width: 9),
                    const Expanded(
                      child: Text(
                        "Finding the best restaurants and shops near you",
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFFF2885).withOpacity(0.15),
                            shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.store_mall_directory_outlined,
                            size: 27,
                            color: Color(0xFFFF2885),
                          ),
                        )),
                    const SizedBox(width: 9),
                    const Expanded(
                      child: Text(
                        "Faster and accurate delivery",
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AuthScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF2885)),
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
