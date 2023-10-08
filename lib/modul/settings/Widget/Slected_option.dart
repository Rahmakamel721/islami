import 'package:flutter/material.dart';

class SlectedOption extends StatelessWidget {
  final String SlectedTitle;

  const SlectedOption({super.key, required this.SlectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1.5,
        color: Colors.black,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(SlectedTitle), Icon(Icons.check)],
      ),
    );
  }
}
