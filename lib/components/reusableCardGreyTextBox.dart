import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/constants.dart';

class ReusableCardGreyTextBox extends StatelessWidget {
  ReusableCardGreyTextBox(
      {@required this.textInputType, @required this.textInBox});

  final TextInputType textInputType;
  final String textInBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          border: new Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: TextField(
        style: kLabelGreyTextStyle,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: textInBox,
        ),
        keyboardType: textInputType,
        cursorColor: Colors.white,
        cursorHeight: 20,
        showCursor: true,
      ),
    );
  }
}
