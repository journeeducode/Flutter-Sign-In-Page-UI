import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Center(
                child: Image.asset("assets/weeding.png", width: 150),
              ),
              SizedBox(height: 50),
              Text(
                "Verificaiton Code",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SafeArea(
                  child: Text(
                "We have send the code verification to Your mobile phone",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              )),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("+225 0777176121",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  )
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "1",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Text(
                      "2",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Text(
                      "3",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Text(
                      "4",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                  )
                ],
              ),
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                child: Text(
                  "Submit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green.shade400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
