import 'package:flutter/material.dart';
import '/components/no_account.dart';
import '/screens/forget_password/components/forget_password_form.dart';
import '/size_config.dart';

class Body extends StatelessWidget {
  //const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              Text(
                'Forget Password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              Text(
                'Tape in your email address to reset your password',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              ForgetPasswordForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
