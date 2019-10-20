import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color mainColor = Colors.deepPurple;
  void newColor(){
    var randomNum = Random();
    setState(() {
     mainColor =  Color.fromRGBO(randomNum.nextInt(160),
          randomNum.nextInt(160), randomNum.nextInt(160), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(mainColor.toString());
    return MaterialApp(
      title: 'Test Task',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Test Task'),
        // ),
        body: GestureDetector(
          onTap: newColor,
          child: Container(
            color: mainColor,
            child: Center(
              child: Text(
                'Hey There!',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
