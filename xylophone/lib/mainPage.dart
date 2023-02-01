import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/src/audio_cache.dart';

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded keyGenerator({int? soundNumber, Color? color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundNumber!);
        },
        child: Text('..'),
      ),
    );
  }

  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            keyGenerator(soundNumber: 1, color: Colors.red),
            keyGenerator(soundNumber: 2, color: Colors.green),
            keyGenerator(soundNumber: 3, color: Colors.blue),
            keyGenerator(soundNumber: 4, color: Colors.indigo),
            keyGenerator(soundNumber: 5, color: Colors.lime),
            keyGenerator(soundNumber: 6, color: Colors.purple),
            keyGenerator(soundNumber: 7, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}
//79

