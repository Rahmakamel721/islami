import 'package:flutter/material.dart';
import 'package:islami/modul/settings/Widget/language_buttom.dart';

import 'Widget/option_Item.dart';
import 'Widget/theme_mode_buttom.dart';

class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Column(
      children: [
        OptionItem(
            optionName: "Language",
            option: "Englih",
            click: () {
              ShowLangaugeOption(context);
            }),
        SizedBox(
          height: 40,
        ),
        OptionItem(
            optionName: "Theme mode",
            option: "Light",
            click: () {
              ShowModeOption(context);
            }),
      ],
    );
  }
}

void ShowLangaugeOption(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Language_sheet(),
  );
}

void ShowModeOption(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => ThemeModeButtom(),
  );
}
