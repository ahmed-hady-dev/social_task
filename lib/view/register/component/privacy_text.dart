import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class PrivacyText extends StatelessWidget {
  const PrivacyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle defaultStyle = Theme.of(context).textTheme.bodyText1!.copyWith(
          color: AppColors.darkerGreyColor,
          fontWeight: FontWeight.bold,
        );
    final TextStyle linkStyle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontWeight: FontWeight.bold,
        );
    return Padding(
      padding: EdgeInsets.only(left: 32.0, right: 32.0, top: MediaQuery.of(context).size.height * 0.09),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: defaultStyle,
          children: <TextSpan>[
            const TextSpan(text: 'By signing in, I agree with '),
            TextSpan(
                text: 'Terms of Use',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    debugPrint('Terms of Use');
                  }),
            const TextSpan(text: ' and '),
            TextSpan(
                text: 'Privacy Policy',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    debugPrint('Privacy Policy"');
                  }),
          ],
        ),
      ),
    );
  }
}
