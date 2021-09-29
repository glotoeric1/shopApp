import 'package:flutter/material.dart';
import 'package:shopclass/components/custom_surffix_icon.dart';
import 'package:shopclass/components/default_button.dart';
import 'package:shopclass/components/form_error.dart';
import 'package:shopclass/constants.dart';
import 'package:shopclass/screens/otp/otp_screen.dart';
import 'package:shopclass/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formkey = GlobalKey<FormState>();
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  final List<String> errors = [];

  void addErr({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeErr({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          firstNameFormField(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          lastNameFormField(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          phoneNumberFormField(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          addressFormField(),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          FormError(errors: errors),
          DefaultButton(
            buttonText: "Continue",
            pressOnButton: () {
              if (_formkey.currentState.validate()) {
                _formkey.currentState.save();

                //More to the next screen
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          Text(
            "By continue you have accepted our terms \nand conditions ",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
        ],
      ),
    );
  }

  TextFormField firstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErr(error: kFirstNameNullError);
        } else if (firstNameValidattorRegExp.hasMatch(value)) {
          removeErr(error: kInvalidFirstName);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addErr(error: kFirstNameNullError);
          return '';
        } else if (!firstNameValidattorRegExp.hasMatch(value)) {
          addErr(error: kInvalidFirstName);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Firstname ",
        hintText: "Please enter your firstname ",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: CustomSurffix(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField lastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErr(error: kLastNameNullError);
        } else if (lastNameValidattorRegExp.hasMatch(value)) {
          removeErr(error: kInvalidFirstName);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addErr(error: kLastNameNullError);
          return '';
        } else if (!lastNameValidattorRegExp.hasMatch(value)) {
          addErr(error: kInvalidLastName);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Lastname ",
        hintText: "Please enter your Lastname ",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: CustomSurffix(svgIcon: 'assets/icons/User.svg'),
      ),
    );
  }

  TextFormField addressFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErr(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addErr(error: kAddressNullError);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address ",
        hintText: "Please enter your Address ",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: CustomSurffix(svgIcon: 'assets/icons/Location point.svg'),
      ),
    );
  }

  TextFormField phoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErr(error: kPhoneNullError);
        } else if (phoneNumberValidattorRegExp.hasMatch(value)) {
          removeErr(error: kInvalidPhone);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addErr(error: kPhoneNullError);
          return '';
        } else if (!phoneNumberValidattorRegExp.hasMatch(value)) {
          addErr(error: kInvalidPhone);
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone number ",
        hintText: "Please enter your Phone number ",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: CustomSurffix(svgIcon: 'assets/icons/Phone.svg'),
      ),
    );
  }
}
