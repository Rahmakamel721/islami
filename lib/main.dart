import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Layout/Home%20Layout/HomeLayout.dart';
import 'package:islami/core/appTheem/appTheme.dart';
import 'package:islami/modul/Hadeth/HadeathDetielsView.dart';
import 'package:islami/modul/Quran/QuranDetielsView.dart';
import 'package:islami/modul/splash_screen/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'islami',
      locale: Locale("en"),
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName: (context) => const splashScreen(),
        HomeLayout.routeName: (context) => const HomeLayout(),
        QuranDetiels.routeName: (context) => QuranDetiels(),
        HadeathDetiels.routeName: (context) => HadeathDetiels()
      },
      theme: appTheme.lightTheme,
      darkTheme: appTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
