import 'package:flutter/material.dart';

import 'Slected_option.dart';
import 'unslected_option.dart';

class Language_sheet extends StatelessWidget {
  const Language_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Column(
        children: [
          SlectedOption(
            SlectedTitle: ' English',
          ),
          SizedBox(
            height: 30,
          ),
          UnslectedOption(
            unSlectedTitle: 'عربي',
          )
        ],
      ),
    );
  }
}
