import 'package:flutter/material.dart';
import 'package:social_task/constants/app_colors.dart';

class RegisterHeading extends StatelessWidget {
  const RegisterHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Let’s start here',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 36.0,
              ),
        ),
        Text(
          'Fill in your details to begin',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: AppColors.darkerGreyColor,
              ),
        ),
      ],
    );
  }
}
