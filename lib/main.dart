import 'package:flutter/material.dart';
import 'package:phone_number_verification_ui/screens/phoneNumber-1.dart';

void main() {
  runApp(PhoneNumberVerificationUi());
}

class PhoneNumberVerificationUi extends StatelessWidget {
  const PhoneNumberVerificationUi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
