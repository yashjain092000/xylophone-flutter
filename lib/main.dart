import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Center(child: Text('Xylophone')),backgroundColor: Colors.blueGrey.shade500,),
        body: SafeArea(
      child: Column(

        crossAxisAlignment:CrossAxisAlignment.stretch,
      children: <Widget>[
      Expanded(
        child: FlatButton(

        color: Colors.deepPurple,
          onPressed: () {
            playSound(1);
          },
        ),
      ),
      Expanded(child:FlatButton(
        color: Colors.blue,
        onPressed: () {
          playSound(2);
        },
      ),),
      Expanded(
        child: FlatButton(
          color: Colors.lightBlueAccent,
          onPressed: () {
            playSound(3);
          },
        ),
      ),
      Expanded(
        child: FlatButton(
          color: Colors.green,
          onPressed: () {
            playSound(4);
          },
        ),
      ),
      Expanded(
        child: FlatButton(
          color: Colors.yellow,
          onPressed: () {
            playSound(5);
          },
        ),
      ),
      Expanded(
        child: FlatButton(
          color: Colors.orange,
          onPressed: () {
            playSound(6);
          },
        ),
      ),
      Expanded(
        child: FlatButton(
          color: Colors.red,
          onPressed: () {
            playSound(7);
          },
        ),
      ),

      ],
    ),)
    ,
    )
    ,
    );
  }
}
