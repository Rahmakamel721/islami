import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNum;

  const QuranItem({super.key, required this.suraName, required this.suraNum});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Text(
          suraNum,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        )),
        Container(color: theme.primaryColor, width: 1.5, height: 45),
        Expanded(
            child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        ))
      ],
    );
  }
}
