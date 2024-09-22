import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_panda/Screens/email_auth.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF2885),
        leading: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xFFFF2885),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/auth_back.png',
                width: 300,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sign Up or Log in",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text("Select your preferred method to continue"),
                      const SizedBox(height: 20),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            height: 58,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/google_icon.webp',
                                    width: 25),
                                const Text("Continue with google"),
                                const SizedBox(width: 20)
                              ],
                            ),
                          )),
                      const SizedBox(height: 15),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            height: 58,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(color: Colors.grey[300]!),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/facebook_icon.png',
                                    width: 25),
                                const Text(
                                  "Continue with Facebook",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(width: 20)
                              ],
                            ),
                          )),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Or",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 5),
                            Expanded(child: Divider())
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EmailAuth()));
                          },
                          child: Container(
                            height: 58,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: const Color(0xFFFF2885)),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.mail_outline_rounded,
                                  color: Color(0xFFFF2885),
                                ),
                                Text(
                                  "Continue with email",
                                  style: TextStyle(
                                      color: Color(0xFFFF2885),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 20)
                              ],
                            ),
                          ))
                    ],
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
