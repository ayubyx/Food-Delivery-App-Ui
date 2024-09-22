import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;

  CustomTextButton(
      {super.key,
      required this.text,
      required this.isDisabled,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled ? null : onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isDisabled ? Colors.grey[400] : const Color(0xFFFF2885)),
        child: Center(
          child: Text(text,
              style: const TextStyle(color: Colors.white, fontSize: 15)),
        ),
      ),
    );
  }
}
