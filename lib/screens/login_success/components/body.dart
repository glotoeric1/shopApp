import 'package:flutter/material.dart';
import '/components/default_button.dart';
import '/screens/splash/splash_screen.dart';
import '/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.8,
            child: DefaultButton(
              buttonText: "Back to home",
              pressOnButton: () => Navigator.pushNamed(
                context,
                SplashScreen.routeName,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
