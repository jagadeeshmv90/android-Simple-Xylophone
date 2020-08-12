import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'XyloPhone',
        ),
      ),
      body: Xylo(),
    ),
  ));
}

class Xylo extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildChild({int number1, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number1);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildChild(number1: 1, color: Colors.red),
          buildChild(number1: 2, color: Colors.orange),
          buildChild(number1: 3, color: Colors.yellow),
          buildChild(number1: 4, color: Colors.green),
          buildChild(number1: 5, color: Colors.blue),
          buildChild(number1: 6, color: Colors.teal),
          buildChild(number1: 7, color: Colors.purple)
        ],
      ),
    );
  }
}
