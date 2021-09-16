import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  Expanded soundLayout({required Color color, required int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundLayout(color: Colors.red, soundNumber: 1),
              soundLayout(color: Colors.orange, soundNumber: 2),
              soundLayout(color: Colors.yellow, soundNumber: 3),
              soundLayout(color: Colors.green, soundNumber: 4),
              soundLayout(color: Colors.teal, soundNumber: 5),
              soundLayout(color: Colors.blue, soundNumber: 6),
              soundLayout(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
