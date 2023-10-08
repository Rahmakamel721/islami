import 'package:flutter/material.dart';

class UnslectedOption extends StatelessWidget {
  final String unSlectedTitle;

  const UnslectedOption({super.key, required this.unSlectedTitle});

  @override
  Widget build(BuildContext context) {
    return Text(unSlectedTitle);
  }
}
