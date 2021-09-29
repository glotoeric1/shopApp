import 'package:flutter/material.dart';
import '/screens/sign_up/component/body.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Form"),
      ),
      body: Body(),
    );
  }
}
