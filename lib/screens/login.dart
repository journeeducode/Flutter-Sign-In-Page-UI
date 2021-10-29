import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register.dart';

import 'components/title_text.dart';
import 'components/validate_button.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: const Text(
              'Login page',
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
                        TitleText(text: "Password"),
                        SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                // labelText: 'Enter your password',
                                hintText: "Enter your password"),
                          ),
                        ),
                        SizedBox(height: 10),
                        ValideButton(
                          text: "Sign In",
                          onTap: () {
                            if (_formKey.currentState.validate()) {}
                          },
                        ),
                        SizedBox(height: 5),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            );
                          },
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Have an account',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: ' register',
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
                )))));
  }
}
