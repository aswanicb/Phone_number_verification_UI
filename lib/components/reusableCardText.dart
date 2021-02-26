import 'package:flutter/material.dart';

class ReusableCardText extends StatelessWidget {
  ReusableCardText({
    @required this.enterText,
    @required this.marginSize,
    @required this.labelTextStyle,
  });

  final String enterText;
  final EdgeInsetsGeometry marginSize;
  final TextStyle labelTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginSize,
      child: Text(
        enterText,
        textAlign: TextAlign.center,
        style: labelTextStyle,
      ),
    );
  }
}
