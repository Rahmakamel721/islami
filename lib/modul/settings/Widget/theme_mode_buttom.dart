import 'package:flutter/material.dart';
import 'package:islami/modul/settings/Widget/unslected_option.dart';

import 'Slected_option.dart';

class ThemeModeButtom extends StatelessWidget {
  const ThemeModeButtom({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          SlectedOption(
            SlectedTitle: ' ligth',
          ),
          SizedBox(
            height: 30,
          ),
          UnslectedOption(
            unSlectedTitle: 'Dark',
          )
        ],
      ),
    );
  }
}
