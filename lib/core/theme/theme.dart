import 'package:flutter/material.dart';
import 'package:social_task/constants/app_colors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
      unselectedIconTheme: const IconThemeData(color: AppColors.bottomNavBarGreyColor),
      selectedIconTheme: const IconThemeData(color: AppColors.lightBlackColor),
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
    ),
    dividerColor: AppColors.darkerGreyColor,
    colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Colors.black,
          secondary: AppColors.orangeColor,
        ),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Poppins',
        ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'Poppins',
        ),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: AppColors.redColor,
      contentPadding: const EdgeInsets.all(16),
      fillColor: AppColors.greyColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.redColor),
        borderRadius: BorderRadius.circular(15),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.grey,
    ),
  );
}

//===============================================================
ThemeData darkTheme(BuildContext context) {
  return ThemeData.dark().copyWith(
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Poppins',
        ),
    primaryTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Poppins',
        ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.grey,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: Colors.grey,
      filled: true,
      contentPadding: const EdgeInsets.all(8),
      border: OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
      focusedBorder: OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
      enabledBorder: OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
    ),
    brightness: Brightness.dark,
    dividerColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
    ),
  );
}
