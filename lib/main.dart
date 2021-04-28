import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: MagicBallPage()),
    );

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF424242),
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Color(0xFF212121),
      ),
      body: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            answer = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$answer.png'),
      ),
    );
  }
}
