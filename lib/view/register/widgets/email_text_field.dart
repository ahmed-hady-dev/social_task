import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.onFieldSubmitted,
    this.focusNode,
  }) : super(key: key);

  final String hintText;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      focusNode: focusNode,
      validator: (value) {
        if (value!.isEmpty) {
          return "email must not be empty";
        } else if (!value.contains('@')) {
          return "please enter a valid email";
        } else {
          return null;
        }
      },
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
