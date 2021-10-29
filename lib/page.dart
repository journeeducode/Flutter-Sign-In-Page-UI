import 'package:flutter/material.dart';

class PageDefi extends StatelessWidget {
  const PageDefi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign in",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    child: Text("G+",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade400, shape: BoxShape.circle)),
                SizedBox(width: 15),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/facebook.png",
                      width: 50,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle)),
                SizedBox(width: 15),
                Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/twitter.png",
                      width: 50,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle)),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "or use your email account",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.mail)),
                )),
            SizedBox(height: 20),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility)),
                )),
            SizedBox(height: 10),
            Text(
              "Forget your password",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade200,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(height: 20),
            Container(
              padding:
                  EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 20),
              child: Text("Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade400),
            ),
            Row(
              children: [
                Container(
                    child: Checkbox(
                  activeColor: Colors.blue.shade300,
                  onChanged: (bool value) {},
                  value: true,
                )),
                Text("Recieve Recieve")
              ],
            )
          ],
        ),
      )),
    );
  }
}
