import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    "assets/influencer1.png",
                    width: 200,
                  ),
                ),
              ),
            ),
            Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.grey.shade200,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: Text(
                      "Log-In",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(height: 7),
                        TextField(
                            decoration:
                                InputDecoration(labelText: "Your email id")),
                        SizedBox(height: 10),
                        Text("Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        TextField(
                            decoration: InputDecoration(
                                labelText: "Your password",
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                  size: 24.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ))),
                        SizedBox(height: 5),
                        Align(
                          child: Text("Forget password ?"),
                          alignment: Alignment.bottomRight,
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Center(
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  text: "Don't have an account ?",
                                  children: [
                                TextSpan(
                                    text: " Sign-up",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontWeight: FontWeight.bold))
                              ])),
                        ),
                        SizedBox(height: 10),
                        Row(children: <Widget>[
                          Expanded(
                              child: Divider(
                            height: 5,
                            color: Colors.black,
                          )),
                          Text(
                            "OR sign with",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Expanded(
                              child: Divider(
                            height: 5,
                            color: Colors.black,
                          )),
                        ]),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/gmail.png",
                                  width: 30,
                                )),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Image.asset(
                                "assets/facebook.png",
                                width: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
