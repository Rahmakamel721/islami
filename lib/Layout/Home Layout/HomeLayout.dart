import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/modul/Hadeth/HadethView.dart';
import 'package:islami/modul/Quran/QuranView.dart';
import 'package:islami/modul/radio/radioView.dart';
import 'package:islami/modul/sebha/sebhaView.dart';
import 'package:islami/modul/settings/settingsView.dart';
class HomeLayout extends StatefulWidget {
  static const routeName = 'homelayout';

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int SlectedIndex = 0;

  List<Widget> Screens = [
    QuranView(),
    HadethView(),
    sebhaView(),
    radioView(),
    settingsView()
  ];

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/backgroundLite.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.ilami)),
        body: Screens[SlectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int Index) {
              setState(() {
                SlectedIndex = Index;
              });
            },
            currentIndex: SlectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/quran_icon.png')),
                  label: local.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/image/quran-quran-svgrepo-com.png')),
                  label: local.hadeath),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/sebha_icon.png')),
                  label: local.sebha),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/radio_icon.png')),
                  label: local.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: local.setting)
            ]),
      ),
    );
  }
}
