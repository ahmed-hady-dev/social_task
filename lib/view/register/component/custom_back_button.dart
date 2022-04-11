import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_task/core/router/router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04, bottom: 24.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          splashRadius: 18,
          onPressed: () => MagicRouter.pop(),
          icon: const FaIcon(FontAwesomeIcons.arrowLeft),
        ),
      ),
    );
  }
}
