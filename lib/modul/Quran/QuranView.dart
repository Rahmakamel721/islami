import 'package:flutter/material.dart';
import 'package:islami/modul/Quran/QuranDetielsView.dart';
import 'package:islami/modul/Quran/Widget/QuranItem.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> SuraName = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset('assets/image/quran_header.png'),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
          height: 5,
          indent: 10,
          endIndent: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              "عدد الآيات",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            )),
            Container(color: theme.primaryColor, width: 1.5, height: 45),
            Expanded(
                child: Text(
              " اسم السورة",
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ))
          ],
        ),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
          height: 5,
          indent: 10,
          endIndent: 10,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, QuranDetiels.routeName,
                  arguments: quranDetail(
                      suraNum: "${index + 1}", suraName: SuraName[index]));
            },
            child:
                QuranItem(suraName: SuraName[index], suraNum: "${index + 1}"),
          ),
          itemCount: 50,
        ))
      ],
    );
  }
}

class quranDetail {
  final String suraName;
  final String suraNum;

  quranDetail({required this.suraName, required this.suraNum});
}