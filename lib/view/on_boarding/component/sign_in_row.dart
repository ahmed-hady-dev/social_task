import 'package:flutter/material.dart';
import 'package:social_task/constants/app_colors.dart';

class SignInRow extends StatelessWidget {
  const SignInRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Already a member?',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign in',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: AppColors.orangeColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
