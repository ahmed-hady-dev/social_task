import 'package:flutter/material.dart';
import 'package:social_task/view/home/component/home_header_with_icon_button.dart';
import 'package:social_task/view/home/component/home_search_bar.dart';
import 'package:social_task/view/register/widgets/details_card.dart';
import 'component/home_header.dart';
import 'model/home_card_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeHeaderWithIconButton(),
          HomeSearchBar(onPressed: () {}),
          const HomeHeader(text: 'Near you'),
          SizedBox(
            height: 241,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: homeList.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              itemBuilder: (context, index) {
                return DetailsCard(
                  name: homeList[index].name,
                  distance: homeList[index].distance,
                  price: homeList[index].price,
                  img: homeList[index].image,
                  rating: homeList[index].rating,
                  onTap: () {},
                );
              },
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16.0), child: Divider()),
          const HomeHeader(text: 'Suggested'),
          SizedBox(
            height: 241,
            child: ListView.builder(
              shrinkWrap: true,
              // 1st add
              itemCount: homeList.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              itemBuilder: (context, index) {
                return DetailsCard(
                  name: homeList[index].name,
                  distance: homeList[index].distance,
                  price: homeList[index].price,
                  img: homeList[index].image,
                  rating: homeList[index].rating,
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
