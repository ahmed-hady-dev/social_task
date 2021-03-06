import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.onFieldSubmitted,
    required this.obscureText,
    required this.onPressed,
    required this.icon,
    this.focusNode,
  }) : super(key: key);

  final String hintText;
  final TextEditingController? controller;
  final Function(String) onFieldSubmitted;
  final bool obscureText;
  final FocusNode? focusNode;
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscureText,
      focusNode: focusNode,
      validator: (value) {
        if (value!.isEmpty) {
          return "password must not be empty";
        } else if (value.length < 6) {
          return "password must be at least 6 digits";
        } else if (value.contains(' ')) {
          return "The password cannot have space.";
        } else {
          return null;
        }
      },
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          splashRadius: 10.0,
          splashColor: Colors.black12,
        ),
      ),
    );
  }
}
