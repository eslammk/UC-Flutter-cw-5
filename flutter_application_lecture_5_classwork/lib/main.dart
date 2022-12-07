import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;

  var num2 = 1;

  var num3 = 1;

  void PlayButton() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;
    num3 = Random().nextInt(3) + 1;
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/images/r_$num1.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Text(" Flower 2",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Container(
                    child: Image.asset(
                      "assets/images/r_$num2.jpg",
                      width: 100,
                      height: 100,
                    ),
                    padding: EdgeInsets.all(20),
                  ),
                  Text("Flower 1",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      PlayButton();
                    },
                    child: Text("play")),
              ),
            ]),
          ),
        )));
  }
}
