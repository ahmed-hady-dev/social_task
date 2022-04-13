import 'package:flutter/material.dart';

class NumbersRow extends StatelessWidget {
  const NumbersRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          TextCircle(
            text: '1',
            backgroundColor: Colors.white,
          ),
          DashWidget(),
          TextCircle(
            text: '2',
            backgroundColor: Color(0xff404040),
            textColor: Colors.white,
          ),
          DashWidget(),
          TextCircle(
            text: '3',
            backgroundColor: Color(0xff404040),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class TextCircle extends StatelessWidget {
  const TextCircle({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: 16.0,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: textColor),
        ),
      ),
    );
  }
}

class DashWidget extends StatelessWidget {
  const DashWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      color: Colors.white,
      height: 2.0,
      width: 12.0,
    );
  }
}
