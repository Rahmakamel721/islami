import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hadeth',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
