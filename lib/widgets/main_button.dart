import 'package:flutter/material.dart';
import 'package:social_task/constants/app_colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? width;
  const MainButton({
    required this.text,
    required this.onPressed,
    Key? key,
    this.verticalPadding = 12,
    this.horizontalPadding = 0.0,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const secondaryColor = AppColors.orangeGradientColor;
    const primaryColor = AppColors.orangeColor;
    const accentColor = Color(0xffffffff);

    const double borderRadius = 15;

    return Container(
        width: width ?? MediaQuery.of(context).size.width - 32.0,
        margin: EdgeInsets.symmetric(vertical: verticalPadding!, horizontal: horizontalPadding!),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16.0, horizontal: 75.0)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              color: accentColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
