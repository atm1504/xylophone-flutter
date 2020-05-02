import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int positionNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(positionNumber);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('XYLOPHONE'),
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(color: Colors.red, positionNumber: 1, text: "sa"),
              buildKey(color: Colors.orange, positionNumber: 2, text: "re"),
              buildKey(color: Colors.yellow, positionNumber: 3, text: "ga"),
              buildKey(color: Colors.green, positionNumber: 4, text: "ma"),
              buildKey(color: Colors.blue, positionNumber: 5, text: "pa"),
              buildKey(color: Colors.indigo, positionNumber: 6, text: "dha"),
              buildKey(color: Colors.purple, positionNumber: 7, text: "ni"),
            ],
          ),
        ),
      ),
    );
  }
}
