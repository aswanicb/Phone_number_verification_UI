import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/constants.dart';

class ReusableCardTextBox extends StatelessWidget {
  const ReusableCardTextBox({
    @required this.continueButtonInActiveColor,
    @required this.textInBox,
    @required this.textStyle,
  });

  final Color continueButtonInActiveColor;
  final String textInBox;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      height: kBottomButtonHeight,
      width: kBottomButtonWidth,
      child: Text(
        textInBox,
        textAlign: TextAlign.center,
        style: textStyle,
      ),
      decoration: BoxDecoration(
        color: continueButtonInActiveColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
