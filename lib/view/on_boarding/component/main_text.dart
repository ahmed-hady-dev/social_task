import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Too tired to walk your dog?\nLet’s help you!',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
