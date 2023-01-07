import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
  void playSound(int audioNumber) {
    final player = AudioPlayer();
    player.setAsset('assets/audio/note$audioNumber.wav');
    player.play();
  }

  Expanded buildKey({required Color color, required int audioNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(audioNumber);
          },
          child: const Text(
            'Click Me',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, audioNumber: 1),
              buildKey(color: Colors.orange, audioNumber: 2),
              buildKey(color: Colors.yellow, audioNumber: 3),
              buildKey(color: Colors.green, audioNumber: 4),
              buildKey(color: Colors.teal, audioNumber: 5),
              buildKey(color: Colors.blue, audioNumber: 6),
              buildKey(color: Colors.purple, audioNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
