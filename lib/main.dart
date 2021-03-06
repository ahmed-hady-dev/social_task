import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/view/on_boarding/on_boarding_view.dart';
import 'core/getStorageCacheHelper/get_storage_cache_helper.dart';
import 'core/theme/theme.dart';
import 'core/theme/theme_cubit.dart';

import 'core/blocObserver/bloc_observer.dart';
import 'core/dioHelper/dio_helper.dart';
import 'core/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //===============================================================
  DioHelper.init();
  //===============================================================
  await EasyLocalization.ensureInitialized();
  //===============================================================
  await CacheHelper.init();
  await CacheHelper.getTheme ?? await CacheHelper.cacheTheme(value: false);
  bool? isDark = await CacheHelper.getTheme;
  //===============================================================
  BlocOverrides.runZoned(
    () {
      runApp(EasyLocalization(
        child: MyApp(isDark: isDark!),
        path: 'assets/translation',
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
        fallbackLocale: const Locale('en', 'US'),
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.isDark}) : super(key: key);
  final bool? isDark;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()..changeTheme(themeModeFromCache: isDark)),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            var themeCubit = ThemeCubit.get(context).isDark;
            return MaterialApp(
              title: 'WOO DOG',
              debugShowCheckedModeBanner: false,
              navigatorKey: navigatorKey,
              onGenerateRoute: onGenerateRoute,
              theme: lightTheme(context),
              darkTheme: darkTheme(context),
              themeMode: themeCubit ? ThemeMode.dark : ThemeMode.light,
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              home: const OnBoardingView(),
            );
          },
        ));
  }
}
