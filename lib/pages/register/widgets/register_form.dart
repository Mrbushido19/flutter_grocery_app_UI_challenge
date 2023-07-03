import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _registerFormKey = GlobalKey<FormState>();
  bool isVisible = false;
  String userName = "";
  String userEmail = "";
  String userNum = "";
  String userPass = '';
  String userAddr = '';

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _registerFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username"),
            TextFormField(
              validator: (value) {
                if (userName.isEmpty) {
                  return "Please enter your Name";
                }
              },
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
              decoration: InputDecoration(
                  hintText: "Customer",
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Email",
            ),
            TextFormField(
              validator: (value) {
                if (userEmail.isEmpty) {
                  return "Please enter your email";
                }
              },
              onChanged: (value) {
                setState(() {
                  userEmail = value;
                });
              },
              decoration: InputDecoration(
                  hintText: "Customer@gmail.com",
                  suffixIcon: Icon(
                    Icons.mail,
                    color: Colors.green,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Contact No."),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  userNum = value;
                });
              },
              validator: (value) {
                if (userNum.isEmpty) {
                  return "Please enter your number";
                }
              },
              decoration: InputDecoration(
                  hintText: "07777777",
                  suffixIcon: Icon(
                    Icons.smartphone,
                    color: Colors.green,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Password"),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  userPass = value;
                });
              },
              validator: (value) {
                if (userPass.isEmpty) {
                  return "Please enter your password";
                }
              },
              obscureText: isVisible ? true : false,
              decoration: InputDecoration(
                  hintText: "your password",
                  suffixIcon: IconButton(
                    icon: isVisible
                        ? Icon(
                            Icons.visibility,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.visibility_off,
                            color: Colors.green,
                          ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Address"),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  userAddr = value;
                });
              },
              validator: (value) {
                if (userAddr.isEmpty) {
                  return "Please enter your email";
                }
              },
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "test address",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onDoubleTap: () {},
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if (_registerFormKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  )),
            ),
          ],
        ));
  }
}
