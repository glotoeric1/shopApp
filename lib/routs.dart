import 'package:flutter/widgets.dart';
import 'package:shopclass/screens/complete_profile/complete_profile_screen.dart';
import 'package:shopclass/screens/home/home_screen.dart';
import 'package:shopclass/screens/otp/otp_screen.dart';
import '/screens/sign_up/sign_up.dart';
import '/screens/forget_password/forget_screen_password.dart';
import '/screens/login_success/login_success_screen.dart';
import '/screens/splash/sign_in/sigin_in_screen.dart';
import '/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInscreen.routeName: (context) => SignInscreen(),
  ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUp.routeName: (context) => SignUp(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
};
