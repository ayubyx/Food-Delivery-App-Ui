import 'package:flutter/material.dart';
import 'package:food_panda/Screens/loginwith_email.dart';
import 'package:food_panda/components/textbutton.dart';
import 'package:food_panda/components/textfield.dart';

class EmailAuth extends StatefulWidget {
  const EmailAuth({super.key});

  @override
  State<EmailAuth> createState() => _EmailAuthState();
}

class _EmailAuthState extends State<EmailAuth> {
  TextEditingController email = TextEditingController();
  String emailText = '';

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
                    color: emailText.isEmpty
                        ? Colors.grey[400]
                        : const Color(0xFFFF2885)),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    bottom: 20,
                  ),
                  child: Image.asset(
                    'assets/email_icon.png',
                    width: 60,
                  ),
                ),
                const Text(
                  "What\s you email?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  "We\'ll check if you have an account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  title: 'Email',
                  controller: email,
                  onChanged: (value) {
                    setState(() {
                      emailText = value;
                    });
                  },
                  noIcon: true,
                ),
                const Spacer(),
                Divider(
                  height: 40,
                  color: Colors.grey[300],
                ),
                CustomTextButton(
                    text: "Continue",
                    isDisabled: emailText.isEmpty,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginWithEmail()));
                    })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
