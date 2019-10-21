import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backGroundColor = Colors.deepPurple;
  Color textColor = Colors.white;
  var randomNum = Random();

  void backGroundColorGenerator() {
    setState(() {
      backGroundColor = Color.fromRGBO(randomNum.nextInt(160),
          randomNum.nextInt(160), randomNum.nextInt(160), 1);
    });
  }

  void textColorGenerator() {
    int minRange = 150;
    int maxRange = 255;
    setState(() {
      textColor = Color.fromRGBO(
          minRange + randomNum.nextInt(maxRange - minRange),
          minRange + randomNum.nextInt(maxRange - minRange),
          minRange + randomNum.nextInt(maxRange - minRange),
          1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Task',
      home: Scaffold(
        body: GestureDetector(
          onTap: backGroundColorGenerator,
          onLongPress: textColorGenerator,
          child: Container(
            color: backGroundColor,
            child: Center(
              child: Text(
                'Hey There!',
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
