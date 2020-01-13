import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  //Function returns Expanded widget data type
  Expanded buildKey({int note, int color}) {
    return Expanded(
      child: FlatButton(
        color: Color(color),
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 1, color: 0xfff44336),
              buildKey(note: 2, color: 0xff03a9f4),
              buildKey(note: 3, color: 0xfff44336),
              buildKey(note: 4, color: 0xff03a9f4),
              buildKey(note: 5, color: 0xfff44336),
              buildKey(note: 6, color: 0xff03a9f4),
              buildKey(note: 7, color: 0xfff44336),
            ],
          ),
        ),
      ),
    );
  }
}
