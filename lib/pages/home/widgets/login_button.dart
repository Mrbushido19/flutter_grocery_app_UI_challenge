import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.title,
    required this.press,
  });

  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {},
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(18)),
        width: MediaQuery.of(context).size.width,
        child: MaterialButton(
            onPressed: press,
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ))),
      ),
    );
  }
}
