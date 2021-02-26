import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/components/reusableCardGreyTextBox.dart';
import 'package:phone_number_verification_ui/components/reusableCardTextBox.dart';
import 'package:phone_number_verification_ui/constants.dart';
import 'package:phone_number_verification_ui/screens/phoneNumber-1.dart';
import 'package:phone_number_verification_ui/screens/profile-2.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  'Lets create your profile!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              ReusableCardGreyTextBox(
                  textInputType: TextInputType.name, textInBox: 'Your Name'),
              SizedBox(
                height: 20,
              ),
              ReusableCardGreyTextBox(
                  textInputType: TextInputType.number, textInBox: 'Age'),
              SizedBox(
                height: 20,
              ),
              ReusableCardGreyTextBox(
                  textInputType: TextInputType.name, textInBox: 'City'),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    continueButtonInActiveColor = continueButtonActiveColor;
                  });

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePage2();
                  }));
                },
                child: ReusableCardTextBox(
                    continueButtonInActiveColor: continueButtonInActiveColor,
                    textInBox: 'Coninue',
                    textStyle: kContinueTextSTyle),
              )
            ],
          ),
        ],
      ),
    );
  }
}
