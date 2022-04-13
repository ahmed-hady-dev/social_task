import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Function() onPressed;
  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    const secondaryColor = AppColors.orangeGradientColor;
    const primaryColor = AppColors.orangeColor;

    const double borderRadius = 15;
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: const LinearGradient(colors: [primaryColor, secondaryColor])),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white, fontSize: 12.0),
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
