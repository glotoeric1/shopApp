import 'package:flutter/material.dart';

class OptScreenForm extends StatefulWidget {
  const OptScreenForm({Key key}) : super(key: key);

  @override
  _OptScreenFormState createState() => _OptScreenFormState();
}

class _OptScreenFormState extends State<OptScreenForm> {
  final _formkey = GlobalKey<FormState>();
  String verificationCode;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
