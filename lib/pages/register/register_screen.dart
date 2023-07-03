import 'package:flutter/material.dart';

import 'widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Register a new account",
          style: TextStyle(color: Colors.green),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
            size: 32,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding:
              const EdgeInsets.only(right: 15, top: 10, left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_searching,
                      size: 32,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Current Location",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RegisterForm()
            ],
          ),
        )),
      ),
    );
  }
}
