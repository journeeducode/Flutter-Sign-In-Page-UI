import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/components/title_text.dart';
import 'package:flutter_application_1/screens/components/validate_button.dart';
import 'package:flutter_application_1/screens/intro.dart';
import 'package:flutter_application_1/screens/login.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool check1 = false;
  bool check2 = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: const Text(
              'Register page',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TitleText(text: "Email Address"),
                    SizedBox(height: 10),
                    Container(
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    TitleText(text: "Username"),
                    SizedBox(height: 10),
                    Container(
                      child: TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your username',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TitleText(text: "Password"),
                    SizedBox(height: 10),
                    Container(
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter your password',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.purple.shade300,
                              checkColor: Colors.white,
                              value: check1,
                              onChanged: (bool value) {
                                setState(() {
                                  check1 = value;
                                });
                              },
                            ),
                            Expanded(
                              child: Text(
                                  "Recievce Recievce Recievce Recievce Recievce Recievce Recievce"),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: Colors.purple.shade300,
                              checkColor: Colors.white,
                              value: check2,
                              onChanged: (bool value) {
                                setState(() {
                                  check2 = value;
                                });
                              },
                            ),
                            Text("ghvhghg")
                          ],
                        )
                      ],
                    ),
                    ValideButton(
                      text: "Create an account",
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          log(emailController.text);
                          log(usernameController.text);
                          log(passwordController.text);
                        }
                      },
                    ),
                    SizedBox(height: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Have an account',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' Login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple.shade300)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
