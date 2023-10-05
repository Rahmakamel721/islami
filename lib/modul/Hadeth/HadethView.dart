import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modul/Hadeth/HadeathDetielsView.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadeathContant> allHadeathcontant = [];

  List<String> hadethName = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeathcontant.isEmpty) readFile();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset('assets/image/hadeth_header.png'),
        Divider(
            height: 5,
            color: theme.primaryColor,
            indent: 10,
            endIndent: 10,
            thickness: 1.5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "الأحاديث ",
              style: theme.textTheme.bodyMedium,
            )
          ],
        ),
        Divider(
            height: 5,
            color: theme.primaryColor,
            indent: 10,
            endIndent: 10,
            thickness: 1.5),
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadeathDetiels.routeName,
                    arguments: HadeathContant(
                        Title: allHadeathcontant[index].Title,
                        contant: allHadeathcontant[index].contant));
              },
              child: Text(
                allHadeathcontant[index].Title,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              )),
          itemCount: allHadeathcontant.length,
          separatorBuilder: (context, index) => Divider(
              height: 5,
              color: theme.primaryColor,
              indent: 10,
              endIndent: 10,
              thickness: 1.5),
        ))
      ],
    );
  }

  readFile() async {
    String allHadeathContant =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadeath = allHadeathContant.split("#");
    for (int i = 0; i < allHadeath.length; i++) {
      String SingleHadeath = allHadeath[i].trim();
      int indeOfFirstline = SingleHadeath.indexOf("\n");
      String Title = SingleHadeath.substring(0, indeOfFirstline);
      String contant = SingleHadeath.substring(
        indeOfFirstline + 1,
      );
      HadeathContant hadethContant =
          HadeathContant(Title: Title, contant: contant);
      allHadeathcontant.add(hadethContant);
      setState(() {});
    }
  }
}

class HadeathContant {
  final String Title;

  final String contant;

  HadeathContant({required this.Title, required this.contant});
}
