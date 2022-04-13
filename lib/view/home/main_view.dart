import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/view/home/component/home_bottom_nav_bar.dart';
import 'package:social_task/view/home/controller/home_cubit.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final cubit = HomeCubit.get(context);
          return Scaffold(
            body: cubit.homeBottomNavBarList.elementAt(cubit.navBarIndex),
            bottomNavigationBar: const HomeBottomNavBar(),
          );
        },
      ),
    );
  }
}
