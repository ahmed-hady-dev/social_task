import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.08,
        left: MediaQuery.of(context).size.width * 0.06,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 48,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 52,
              child: Image.asset(
                'assets/images/typo.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}
