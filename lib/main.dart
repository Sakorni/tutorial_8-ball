import 'dart:math';

import 'package:flutter/material.dart';

String bs1 = 'images/ball1.png';
String bs2 = 'images/ball2.png';
String bs3 = 'images/ball3.png';
String bs4 = 'images/ball4.png';
String bs5 = 'images/ball5.png';
List<String> ball = [bs1, bs2, bs3, bs4, bs5];
int choice = 0;
Random random = new Random();
void main() => runApp(
      MaterialApp(
        home: BallScreen(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  void gimme() => setState(
        () => choice = random.nextInt(5),
      );

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: gimme, child: Image.asset(ball[choice]));
  }
}

class BallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text("Ask me anything"),
        ),
        body: Center(child: Ball()));
  }
}
