import 'package:flutter/material.dart';

class QuranDetiels extends StatelessWidget {
  static const routeName = "quran";

  const QuranDetiels({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/image/backgroundLite.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(title: Text("إسلامي")),
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
                Text("suraName", style: theme.textTheme.bodyLarge),
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
            Text(
              'datajjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj',
              style: theme.textTheme.bodySmall,
            )
          ]),
        ),
      ),
    );
  }
}
