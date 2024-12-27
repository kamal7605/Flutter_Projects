import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: xylophone(),
        ),
      ),
    );
  }
}

class xylophone extends StatefulWidget {
  const xylophone({super.key});

  @override
  State<xylophone> createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  void playSound(int SoundNumber) {
    final player = AudioCache();
    player.play(UrlSource('note$SoundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
          child: Text(
            'Clickme',
            style: TextStyle(color: color),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(color: Colors.red, soundNumber: 1),
        buildKey(color: Colors.orange, soundNumber: 2),
        buildKey(color: Colors.green, soundNumber: 3),
        buildKey(color: Colors.blue, soundNumber: 4),
        buildKey(color: Colors.purple, soundNumber: 5),
        buildKey(color: Colors.teal, soundNumber: 6),
        buildKey(color: Colors.yellow, soundNumber: 7),
      ],
    );
  }
}

extension on AudioCache {
  void play(UrlSource urlSource) {}
}
