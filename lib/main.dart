import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({color:Colors, int soundNumber}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(title: Center(child: Text('Xylophone'),),
              backgroundColor: Colors.black,),
            body: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                buildKey(color:Colors.deepPurple,soundNumber:1),
                buildKey(color:Colors.blueAccent,soundNumber:2),
                buildKey(color:Colors.lightBlueAccent,soundNumber:3),
                buildKey(color:Colors.green,soundNumber:4),
                buildKey(color:Colors.yellow,soundNumber:5),
                buildKey(color:Colors.orange,soundNumber:6),
                      buildKey(color:Colors.red,soundNumber:7),

    ],
    ),
    )
    ,
    )
    ,
    );
    }
}
