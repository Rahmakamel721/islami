import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/modul/Quran/QuranView.dart';

class QuranDetiels extends StatefulWidget {
  static const routeName = "quran";

  QuranDetiels({super.key});

  @override
  State<QuranDetiels> createState() => _QuranDetielsState();
}

class _QuranDetielsState extends State<QuranDetiels> {
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as quranDetail;
    if (contant.isEmpty) readFile(arg.suraNum);
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/backgroundLite.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.ilami)),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          margin: EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 120),
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: BoxDecoration(
              color: Color(0xffF8F8F8).withOpacity(.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(" سورة${arg.suraName}", style: theme.textTheme.bodyLarge),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.play_circle,
                  size: 32,
                )
              ],
            ),
            Divider(
              endIndent: 30,
              indent: 30,
              thickness: 1.5,
              color: theme.primaryColor,
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) => Text(
                  contant,
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }

  String contant = '';
  List<String> all = [];

  readFile(String index) async {
    String text = await rootBundle.loadString('assets/files/$index.txt');
    contant = text;

    setState(() {
      all = contant.split("\n");
    });
  }
}