import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_task/constants/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 16.0),
      child: Material(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(10.0),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 46.0,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Icon(Icons.room_outlined, color: AppColors.darkerGreyColor),
                    Text(' Kiev, Ukraine',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.darkerGreyColor)),
                  ],
                ),
                const FaIcon(FontAwesomeIcons.bars, color: AppColors.darkerGreyColor, size: 18.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
