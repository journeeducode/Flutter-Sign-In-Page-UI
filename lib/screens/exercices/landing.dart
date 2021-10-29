import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Image.asset("assets/weeding1.png"),
              )),
              Container(
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black),
                          text: "Accept",
                          children: [
                            TextSpan(
                                style: TextStyle(
                                    fontSize: 25, color: Colors.grey.shade500),
                                text: " Incomming")
                          ]),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Multiple source",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w500),
                      )),
                  SafeArea(
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Multiple source Multiple source Multiple source Multiple source Multiple source Multiple source Multiple source Multiple source",
                          // textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                  ),
                ]),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "<-",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.orange.shade300,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "->",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green.shade200, shape: BoxShape.circle),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
