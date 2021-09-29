import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);

const kPrimaryGradientColor = LinearGradient(
  colors: [Color(0xFFFF7643), Color(0xFFFF7643)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final RegExp emailValidattorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp firstNameValidattorRegExp = RegExp(r"^[a-zA-Z]+");
final RegExp lastNameValidattorRegExp = RegExp(r"^[a-zA-Z]+");
final RegExp phoneNumberValidattorRegExp = RegExp(r"^[0-9]+");

const String KEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter valid password";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchNullError = "Passwords don't match";
const String kFirstNameNullError = "Please enter your firstname";
const String kLastNameNullError = "Please enter your Lastname";
const String kPhoneNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";
const String kInvalidFirstName = "Please enter a valid firstname";
const String kInvalidLastName = "Please enter a valid lastname";
const String kInvalidPhone = "Please enter a valid phone number";
