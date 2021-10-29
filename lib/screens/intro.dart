import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/components/bouton.dart';
import 'package:flutter_application_1/screens/register.dart';
import 'components/validate_button.dart';

class Intro extends StatefulWidget {
  final String title;
  Intro({Key key, this.title}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Stashally",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/weeding.png",
                      width: 200,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      "assets/weeding1.png",
                      width: 200,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/weeding2.png",
                      width: 200,
                    ),
                  ),
                )
              ],
            )),
            ValideButton(
                text: 'Connect with Google',
                onTap: () {},
                icone: Container(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset("assets/google.png", width: 15),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                )),
            SizedBox(height: 10),
            Bouton(
                text: 'Connect with Facebook',
                colorText: Colors.black,
                colorBouton: Colors.white,
                borderColor: Colors.black,
                onTap: () {},
                icone: Container(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset("assets/facebook.png", width: 15),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                )),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'You dont have account',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' Sigin',
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
    ));
  }
}
