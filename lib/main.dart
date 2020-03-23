import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Piano_page());

class Piano_page extends StatelessWidget {

  Expanded buildButton({Color color,int soundNo}) {
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () {

              soundPlay(soundNo);


            }, child: Text(" $soundNo"),),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Piano Tune"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.red,soundNo: 1),
              buildButton(color: Colors.blue,soundNo:2),
              buildButton(color: Colors.orange,soundNo:3),
              buildButton(color: Colors.green,soundNo:4),
              buildButton(color: Colors.purple,soundNo:5),
              buildButton(color: Colors.yellow,soundNo:6),
              buildButton(color: Colors.pink,soundNo:7),
            ],
          ),
        ),
      ),
    );
  }

  void soundPlay(int soundNo) {
    final player = AudioCache();
    player.play("note$soundNo.wav");
  }
}
