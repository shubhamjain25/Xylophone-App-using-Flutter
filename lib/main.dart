import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int keyTapped){
    final player = AudioCache();
    player.play('tune$keyTapped.mp3');
    print("Key tapped is $keyTapped");
  }

  Expanded buildKey({Color color, int keyTapped}){
    return Expanded(
      child: Container(
        width: double.infinity,
        color: color,
        child: FlatButton(
          onPressed: () {
            playSound(keyTapped);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(color: Colors.deepPurple, keyTapped: 1),
              buildKey( color: Colors.pink, keyTapped: 2),
              buildKey(color: Colors.green, keyTapped: 3),
              buildKey(color: Colors.red, keyTapped: 4),
              buildKey(color: Colors.blue, keyTapped: 5),
              buildKey(color: Colors.yellow, keyTapped: 6),
              buildKey(color: Colors.black87, keyTapped: 7),
            ],
          ),
        ),
      ),
    );
  }
}







