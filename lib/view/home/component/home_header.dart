import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.text,
    this.subText,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final String? subText;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              subText ?? 'View all',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
