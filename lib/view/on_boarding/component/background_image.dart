import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Image.asset(
              'assets/images/onboarding.png',
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3 - MediaQuery.of(context).viewPadding.top,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
