import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_panda/Screens/HomePage.dart';
import 'package:food_panda/components/textbutton.dart';
import 'package:food_panda/components/textfield.dart';

class AccountInfos extends StatefulWidget {
  const AccountInfos({super.key});

  @override
  State<AccountInfos> createState() => _AccountInfosState();
}

class _AccountInfosState extends State<AccountInfos> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController password = TextEditingController();
  String passwordtext = '';
  String fn = '';
  String ln = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFFFF2885),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Contine",
                style: TextStyle(
                    color: passwordtext.isEmpty
                        ? Colors.grey[400]
                        : const Color(0xFFFF2885)),
              ))
        ],
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
                      'assets/profile_icon.png',
                      width: 60,
                    ),
                  ),
                  const Text("Let's get you started",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  const Text(
                    "first let's create your foodpanda account with ayoubamghar@gmail.com",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                            title: 'First Name',
                            controller: firstName,
                            onChanged: (value) {
                              setState(() {
                                fn = value;
                              });
                            },
                            noIcon: true),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: CustomTextField(
                            title: 'last Name',
                            controller: lastName,
                            onChanged: (value) {
                              setState(() {
                                ln = value;
                              });
                            },
                            noIcon: true),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                      title: 'Password',
                      controller: password,
                      onChanged: (value) {
                        setState(() {
                          passwordtext = value;
                        });
                      },
                      noIcon: false),
                  const SizedBox(height: 290),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 10),
                  CustomTextButton(
                      text: 'Continue',
                      isDisabled:
                          fn.isEmpty || ln.isEmpty || passwordtext.isEmpty,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      }),
                  const SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
