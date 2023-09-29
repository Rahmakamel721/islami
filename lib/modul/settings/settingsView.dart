import 'package:flutter/material.dart';

class settingsView extends StatelessWidget {
  const settingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('settingsView',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
