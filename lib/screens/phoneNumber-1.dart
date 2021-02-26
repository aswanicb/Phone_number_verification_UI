import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/components/reusableCardGreyTextBox.dart';
import 'package:phone_number_verification_ui/components/reusableCardText.dart';
import 'package:phone_number_verification_ui/components/reusableCardTextBox.dart';
import 'package:phone_number_verification_ui/constants.dart';
import 'package:phone_number_verification_ui/screens/phoneNumber-2.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Color continueButtonActiveColor = kActiveButtonColor;
  Color continueButtonInActiveColor = kInActiveButtonColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarBgColor,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableCardText(
                marginSize: EdgeInsets.only(top: 50),
                enterText: 'Please provide your number',
                labelTextStyle: kLabelWhiteTextStyle,
              ),
              SizedBox(
                height: 50,
              ),
              ReusableCardGreyTextBox(
                textInputType: TextInputType.number,
                textInBox: 'Enter Mobile Number',
              ),
              ReusableCardText(
                enterText: 'We will send an OTP to verify this number',
                marginSize: EdgeInsets.all(50),
                labelTextStyle: kLabelGreyTextStyle,
              ),
              SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    continueButtonInActiveColor = continueButtonActiveColor;
                  });

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PinCodeVerificationScreen();
                  }));
                },
                child: ReusableCardTextBox(
                  continueButtonInActiveColor: continueButtonInActiveColor,
                  textInBox: 'Continue',
                  textStyle: kContinueTextSTyle,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
