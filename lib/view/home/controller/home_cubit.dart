import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/view/chat/chat_view.dart';
import 'package:social_task/view/moments/moments_view.dart';
import 'package:social_task/view/profile/profile_view.dart';

import '../home_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
//===============================================================
  int navBarIndex = 0;
  List<Widget> homeBottomNavBarList = const [
    HomeView(),
    MomentsView(),
    ChatView(),
    ProfileView(),
  ];
//===============================================================
  changeBottomNavBarIndex({required int index}) {
    navBarIndex = index;
    emit(ChangeBottomNavBarIndex());
  }
}
