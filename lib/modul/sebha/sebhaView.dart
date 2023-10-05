import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebhaView extends StatelessWidget {
  const sebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context)!.sebha,
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
