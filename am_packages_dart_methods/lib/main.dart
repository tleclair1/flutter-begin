// this app demonstrates the use of packages
// go to pub.dev/flutter
// the "english_words" package
// and the "audioPlayers" package
// and some of the sutilties of dart methods
// which are very similar to C# methods
// methods with no parameters and return nothing
// methods with positional parameters
// methods with named parameters
// methods that return something like basic types or objects

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text("Statefull Widget"),
          backgroundColor: Colors.blue.shade400,
        ),
        body: BodyOfApp(),
      ),
    );
  }
}

class BodyOfApp extends StatefulWidget {
  @override
  _BodyOfAppState createState() => _BodyOfAppState();
}

class _BodyOfAppState extends State<BodyOfApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                playSound1();
              },
              child: Text(
                nouns.first,
                // 'Click Me 1',
                style: TextStyle(
                  fontFamily: 'Chilanka-Regular',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                playSound1();
              },
              child: Text(
                nouns.last,
                // 'Click Me 2',
                style: TextStyle(
                  fontFamily: 'Chilanka-Regular',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          ),
          makeKey(textToShow: 'Click Me 3', soundToPlay: 3),
          makeKey(textToShow: 'Click Me 4', soundToPlay: 4),
          //makeKey(textToShow: 'Click Me 5', soundToPlay: 5),
        ],
      ),
    );
  }

  var soundNumber = 1;
  var direction = 1;

  void playSound1() {
    // simplest function that has no input parmameters and returns nothing
    final player = AudioCache();
    player.play('note$soundNumber.wav');
    if (soundNumber >= 1 && soundNumber <= 6 && direction == 1) {
      soundNumber++;
      if (soundNumber == 7) direction = -1;
    } else {
      soundNumber--;
      if (soundNumber == 1) direction = 1;
    }
  }

  void playSound2(int sound) {
    // medium function that has one positional input parmeter and returns nothing
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded makeKey({String textToShow, int soundToPlay}) {
    // most complicated function that has named input parameters {}, and returns an object of type Exapanded
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound2(soundToPlay);
        },
        child: Text(
          textToShow,
          style: TextStyle(
            fontFamily: 'Chilanka-Regular',
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
      ),
    );
  }
}
