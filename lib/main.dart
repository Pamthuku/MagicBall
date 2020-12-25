import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 230, 130, 0.8),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
          title: Center(
            child: Text(
              "Pam thu ku",
              style: TextStyle(
                color: Color.fromRGBO(0, 255, 255, 1.0),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int result = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  result = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/mgb$result.png"),
            ),
          ),
        ],
      ),
    );
  }
}
