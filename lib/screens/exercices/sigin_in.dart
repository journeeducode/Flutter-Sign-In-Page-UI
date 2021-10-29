import 'package:flutter/material.dart';

class SiginInApp extends StatelessWidget {
  const SiginInApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          "G+",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade400),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/facebook.png",
                          width: 35,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/twitter.png",
                          width: 35,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200),
                      )
                    ],
                  ),
                  SizedBox(height: 40),
                  Text("or use your email account",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "Email",
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 10),
                  Text("Forget your password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue.shade200,
                          fontSize: 18)),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 70, right: 70),
                    child: Text("Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Spacer(),
                      Checkbox(
                        activeColor: Colors.blue.shade400,
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (bool value) {},
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            text: "i accept the privacy",
                            children: [
                              TextSpan(
                                  text: " policy",
                                  style: TextStyle(
                                    color: Colors.blue.shade200,
                                    decoration: TextDecoration.underline,
                                  ))
                            ]),
                      ),
                      Spacer()
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
