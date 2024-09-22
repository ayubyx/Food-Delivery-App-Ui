import 'package:flutter/material.dart';
import 'package:food_panda/Screens/account_infos.dart';
import 'package:food_panda/components/textbutton.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: const Color(0xfffff2884)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Expanded(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/email_icon.png',
                      width: 60,
                    ),
                    const SizedBox(height: 19),
                    const Text("Verify your email adress to get started",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 19),
                    const Text(
                      textAlign: TextAlign.center,
                      "this help us to mitigate fraud and keep your personal date safe",
                      style: TextStyle(fontSize: 14),
                    ),
                    const Spacer(),
                    Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                    ),
                    const SizedBox(height: 10),
                    CustomTextButton(
                        text: 'Send email verification',
                        isDisabled: false,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AccountInfos()));
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
