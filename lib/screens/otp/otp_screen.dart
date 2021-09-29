import 'package:flutter/material.dart';
import 'component/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  const OtpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Otp Screen"),
      ),
      body: Body(),
    );
  }
}
