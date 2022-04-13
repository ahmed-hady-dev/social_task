import 'package:flutter/material.dart';
import 'package:social_task/core/router/router.dart';
import 'package:social_task/view/on_boarding/component/background_image.dart';
import 'package:social_task/view/register/register_view.dart';
import 'package:social_task/widgets/logo.dart';
import 'package:social_task/view/on_boarding/component/main_text.dart';
import 'package:social_task/view/on_boarding/component/sign_in_row.dart';
import 'package:social_task/widgets/main_button.dart';

import 'component/numbers_row.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundImage(),
          const Logo(),
          Positioned(
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const NumbersRow(),
                const MainText(),
                MainButton(
                    text: 'Join our community',
                    onPressed: () {
                      MagicRouter.navigateTo(const RegisterView());
                    }),
                const SignInRow(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
