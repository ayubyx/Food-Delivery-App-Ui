import 'package:flutter/material.dart';
import 'package:food_panda/Screens/email_verification_.dart';
import 'package:food_panda/components/textbutton.dart';
import 'package:food_panda/components/textfield.dart';

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  TextEditingController password = TextEditingController();
  String passwordtext = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFFFF2885),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/login_icon.png',
                      width: 60,
                    ),
                  ),
                  const Text("Log in with your email",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  const Text(
                    "log in with your password to ayoubamghar@gmail.com or get a login link",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                      title: 'Password',
                      controller: password,
                      onChanged: (value) {
                        setState(() {
                          passwordtext = value;
                        });
                      },
                      noIcon: false),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "I forgot my password?",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFFF2884)),
                      )),
                  const SizedBox(height: 210),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 10),
                  CustomTextButton(
                      text: 'Login with password',
                      isDisabled: passwordtext.isEmpty,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EmailVerification()));
                      }),
                  const SizedBox(height: 15),
                  Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xFFFF2885)),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Share me a login link",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFF2885),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
