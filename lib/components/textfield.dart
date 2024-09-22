import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.onChanged,
      required this.noIcon});
  final String title;
  final TextEditingController controller;
  final Function(String)? onChanged;
  bool noIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[200]!)),
          labelText: widget.title,
          suffixIconColor: const Color(0xFFFF2885),
          suffixIcon: widget.noIcon
              ? const SizedBox()
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: isObsecure
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)),
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[200]!))),
    );
  }
}
