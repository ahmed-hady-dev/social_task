import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_task/constants/app_colors.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
    required this.img,
    required this.name,
    required this.onTap,
    required this.distance,
    required this.price,
    required this.rating,
  }) : super(key: key);

  final String img;
  final String name;
  final Function onTap;
  final int distance;
  final int price;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 188.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(22.0),
        onTap: () {
          onTap();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 125,
                      width: 188,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(22)),
                        image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.cover,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Positioned(
                      right: 12.0,
                      top: 12.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const FaIcon(FontAwesomeIcons.solidStar, color: AppColors.yellowColor, size: 12.0),
                                const SizedBox(width: 2),
                                Text(
                                  rating.toString(),
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: AppColors.yellowColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InfoListTile(
              name: name,
              distance: distance,
              price: price,
            )
          ],
        ),
      ),
    );
  }
}

class InfoListTile extends StatelessWidget {
  const InfoListTile({
    Key? key,
    required this.name,
    required this.distance,
    required this.price,
  }) : super(key: key);
  final String name;
  final int distance;
  final int price;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(name, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.room_outlined, color: AppColors.darkerGreyColor, size: 16.0),
          const SizedBox(width: 2),
          Text(
            '$distance km from you',
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.darkerGreyColor, fontSize: 12.0),
          ),
        ],
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
        decoration: BoxDecoration(
          color: AppColors.lightBlackColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          '\$$price/h',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
