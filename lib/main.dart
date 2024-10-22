import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});
  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
   Expanded keyBuilt ({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(""),
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
              children: <Widget> [
                keyBuilt(color: Colors.red, soundNumber: 1),
                keyBuilt(color: Colors.orange, soundNumber: 2),
                keyBuilt(color: Colors.yellow, soundNumber: 3),
                keyBuilt(color: Colors.green, soundNumber: 4),
                keyBuilt(color: Colors.teal, soundNumber: 5),
                keyBuilt(color: Colors.blue, soundNumber: 6),
                keyBuilt(color: Colors.purple, soundNumber: 7)
              ],
            ),
          ),
        ),
    );
  }
}