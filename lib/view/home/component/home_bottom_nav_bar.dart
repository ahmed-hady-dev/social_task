import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_task/constants/app_colors.dart';

import '../controller/home_cubit.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  final primaryColor = AppColors.darkerGreyColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        return BottomNavigationBar(
          elevation: 0.0,
          selectedFontSize: 20,
          currentIndex: cubit.navBarIndex,
          onTap: (index) => cubit.changeBottomNavBarIndex(index: index),
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Home",
              icon: FaIcon(FontAwesomeIcons.house),
            ),
            BottomNavigationBarItem(
              label: "Moments",
              icon: FaIcon(FontAwesomeIcons.userGroup),
            ),
            BottomNavigationBarItem(
              label: "Chat",
              icon: FaIcon(FontAwesomeIcons.solidComment),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: FaIcon(FontAwesomeIcons.userLarge),
            ),
          ],
        );
      },
    );
  }
}
