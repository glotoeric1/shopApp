import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopclass/screens/complete_profile/complete_profile_screen.dart';
import '/components/default_button.dart';
import '/components/form_error.dart';
import '/components/custom_surffix_icon.dart';
import '/constants.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key key}) : super(key: key);

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;

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
      key: _formKey,
      child: Column(
        children: [
          emailFieldSignUp(),
          SizedBox(height: 15),
          passwordFieldSignup(),
          SizedBox(height: 15),
          confirmPasswordFieldSignup(),
          SizedBox(height: 15),
          FormError(errors: errors),
          SizedBox(height: 5),
          DefaultButton(
            buttonText: "Create account",
            pressOnButton: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();

                //go to complete profile screen
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField emailFieldSignUp() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErr(error: KEmailNullError);
        } else if (emailValidattorRegExp.hasMatch(value)) {
          removeErr(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addErr(error: KEmailNullError);
          return "";
        } else if (!emailValidattorRegExp.hasMatch(value)) {
          addErr(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: "Enter your email address",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: CustomSurffix(
          svgIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }

  TextFormField passwordFieldSignup() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeErr(error: kPassNullError);
        } else if (value.length >= 8) {
          removeErr(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addErr(error: kPassNullError);
          return '';
        } else if (value.length < 8) {
          addErr(error: kShortPassError);
          return "";
        }
        password = value;
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: CustomSurffix(
            svgIcon: 'assets/icons/Lock.svg',
          )),
    );
  }

  TextFormField confirmPasswordFieldSignup() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (password == value) {
          removeErr(error: kMatchNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return '';
        } else if (password != value) {
          addErr(error: kMatchNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Re-enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: CustomSurffix(
            svgIcon: 'assets/icons/Lock.svg',
          )),
    );
  }
}
