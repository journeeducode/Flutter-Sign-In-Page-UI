import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page.dart';
import 'package:flutter_application_1/screens/exercices/landing.dart';
import 'package:flutter_application_1/screens/exercices/otp_screen.dart';
import 'package:flutter_application_1/screens/exercices/sigin_in.dart';
import 'package:flutter_application_1/screens/exercices/sign_in.dart';
import 'package:flutter_application_1/screens/intro.dart';
import 'package:flutter_application_1/screens/exercices/login.dart';
import 'package:flutter_application_1/screens/register.dart';

import 'screens/exercices/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageDefi(),
    );
  }
}
