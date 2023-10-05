import 'package:flutter/material.dart';

typedef StingOption = void Function();

class OptionItem extends StatelessWidget {
  final String optionName;
  final String option;
  final StingOption click;

  const OptionItem(
      {super.key,
      required this.optionName,
      required this.option,
      required this.click});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          optionName,
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.left,
        ),
        GestureDetector(
          onTap: () {
            click();
          },
          child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(option),
                    Icon(Icons.arrow_drop_down_outlined)
                  ]),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: media.width,
              // color: Colors.cyan,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: theme.primaryColor,
                    width: 1.5,
                  ))),
        ),
      ],
    );
  }
}

void ShowOption(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Container(),
  );
}
