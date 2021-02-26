import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/components/reusableCardTextBox.dart';
import 'package:phone_number_verification_ui/constants.dart';
import 'package:phone_number_verification_ui/screens/phoneNumber-1.dart';

class ProfilePage2 extends StatefulWidget {
  ProfilePage2({Key key}) : super(key: key);

  @override
  _ProfilePage2State createState() => _ProfilePage2State();
}

class _ProfilePage2State extends State<ProfilePage2> {
  Color continueButtonActiveColor = kActiveButtonColor;
  Color continueButtonInActiveColor = kInActiveButtonColor;
  bool checked1 = false;
  bool checked2 = false;

  bool checked3 = false;

  bool checked4 = false;

  bool checked5 = false;

  bool checked6 = false;

  bool checked7 = false;

  bool checked8 = false;

  bool checked9 = false;

  bool checked10 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarBgColor,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(12, 20, 0, 0),
                child: Text(
                  'Select your Sport/s!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ReusableCardCheckBox(
                checkedValue: checked1,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked1 = newvalue;
                  });
                },
                text: 'Cricket',
              ),
              ReusableCardCheckBox(
                checkedValue: checked2,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked2 = newvalue;
                  });
                },
                text: 'Football',
              ),
              ReusableCardCheckBox(
                text: 'Badminton',
                checkedValue: checked3,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked3 = newvalue;
                  });
                },
              ),
              ReusableCardCheckBox(
                text: 'Basketball',
                checkedValue: checked4,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked4 = newvalue;
                  });
                },
              ),
              ReusableCardCheckBox(
                text: 'Volleyball',
                checkedValue: checked5,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked5 = newvalue;
                  });
                },
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(12, 30, 0, 0),
                child: Text(
                  'Tell us who you are',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ReusableCardCheckBox(
                text: 'Amateur Player',
                checkedValue: checked6,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked6 = newvalue;
                  });
                },
              ),
              ReusableCardCheckBox(
                text: 'Semi Professional',
                checkedValue: checked7,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked7 = newvalue;
                  });
                },
              ),
              ReusableCardCheckBox(
                text: 'Professional Player',
                checkedValue: checked8,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked8 = newvalue;
                  });
                },
              ),
              ReusableCardCheckBox(
                text: 'Sports enthusiast/fan',
                checkedValue: checked9,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked9 = newvalue;
                  });
                },
              ),
              ReusableCardCheckBox(
                text: 'Coach',
                checkedValue: checked10,
                checkBoxFunction: (bool newvalue) {
                  setState(() {
                    checked10 = newvalue;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    continueButtonInActiveColor = continueButtonActiveColor;
                  });

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FirstScreen();
                  }));
                },
                child: ReusableCardTextBox(
                    continueButtonInActiveColor: continueButtonInActiveColor,
                    textInBox: 'Continue',
                    textStyle: kContinueTextSTyle),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ReusableCardCheckBox extends StatelessWidget {
  ReusableCardCheckBox({
    @required this.text,
    @required this.checkedValue,
    @required this.checkBoxFunction,
  });

  final bool checkedValue;
  final Function checkBoxFunction;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: CheckboxListTile(
        title: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        value: checkedValue,
        onChanged: checkBoxFunction,
        activeColor: Colors.grey,
        checkColor: Colors.white,
      ),
    );
  }
}
