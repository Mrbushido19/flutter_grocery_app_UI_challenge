import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.title,
    required this.press,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: press,
          child: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: 20),
          ))),
    );
  }
}
