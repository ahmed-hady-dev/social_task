import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_task/constants/app_colors.dart';
import 'package:social_task/view/home/component/button_with_icon.dart';

class HomeHeaderWithIconButton extends StatelessWidget {
  const HomeHeaderWithIconButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top, right: 16.0, left: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Explore dog walkers',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColors.darkerGreyColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          ButtonWithIcon(
            text: 'Book a walk',
            icon: const FaIcon(FontAwesomeIcons.plus, size: 16.0),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
