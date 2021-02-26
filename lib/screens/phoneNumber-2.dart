import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/components/reusableCardText.dart';
import 'package:phone_number_verification_ui/components/reusableCardTextBox.dart';
import 'package:phone_number_verification_ui/constants.dart';
import 'package:phone_number_verification_ui/screens/profile.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color continueButtonActiveColor = kActiveButtonColor;
    Color continueButtonInActiveColor = kInActiveButtonColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarBgColor,
      ),
      key: scaffoldKey,
      body: ListView(
        children: [
          Column(
            children: [
              ReusableCardText(
                enterText: 'Please enter the OTP',
                marginSize: EdgeInsets.only(top: 50),
                labelTextStyle: kLabelWhiteTextStyle,
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(30),
                  color: Colors.black,
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    obscureText: false,
                    obscuringCharacter: '*',
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 40,
                      fieldWidth: 30,
                      activeFillColor: Colors.black,
                      disabledColor: Colors.grey,
                      activeColor: Colors.grey,
                      inactiveColor: Colors.white,
                      selectedColor: Colors.blue,
                      selectedFillColor: Colors.black,
                      inactiveFillColor: Colors.black,
                    ),
                    cursorColor: Colors.white,
                    //  animationDuration: Duration(milliseconds: 300),
                    textStyle: TextStyle(
                        fontSize: 20, height: 1.6, color: Colors.white),

                    backgroundColor: Colors.black,
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,

                    onCompleted: (v) {
                      print("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ReusableCardText(
                enterText: 'Did not get it? Try resending the code',
                marginSize: null,
                labelTextStyle: kLabelGreySmallTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Text(
                  'Resend',
                  style: TextStyle(color: Colors.green, fontSize: 25),
                ),
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
                    return ProfilePage();
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
