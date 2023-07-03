import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/pages/register/register_screen.dart';

import 'login_button.dart';

class HomeCustomForm extends StatefulWidget {
  const HomeCustomForm({
    super.key,
  });

  @override
  State<HomeCustomForm> createState() => _HomeCustomFormState();
}

class _HomeCustomFormState extends State<HomeCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String password = "";
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextFormField(
              onChanged: (value) => setState(() {
                _email = value;
              }),
              validator: (value) {
                if (_email.isEmpty) {
                  return "Please enter your email";
                }
              },
              decoration: InputDecoration(
                  hintText: "customer@gmail.com",
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Password",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextFormField(
              validator: (value) {
                if (password.isEmpty) {
                  return "Please enter your password";
                }
                return null;
              },
              onChanged: (value) => setState(() {
                password = value;
              }),
              obscureText: isVisible ? true : false,
              decoration: InputDecoration(
                  hintText: "your password",
                  suffixIcon: IconButton(
                    icon: isVisible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Change Password ?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            LoginButton(
              formKey: _formKey,
              title: "Login",
              press: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
            ),
            LoginButton(
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => RegisterScreen()));
              },
              formKey: _formKey,
              title: "Register",
            ),
          ],
        ));
  }
}
