import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int number;
  List<String> weeknd = [
    'https://music-application.000webhostapp.com/music/The_Weeknd_-_Blinding_Lights.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd,%20Kendrick%20Lamar%20-%20Pray%20For%20Me%20(Official).mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20After%20Hours.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20Hardest%20To%20Love.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20Heartless.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20The%20Hills.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20Starboy%20ft.%20Daft%20Punk.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20Snowchild.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20Save%20Your%20Tears.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20Often.mp3',
    'https://music-application.000webhostapp.com/music/The%20Weeknd%20-%20In%20Your%20Eyes.mp3',
    'https://music-application.000webhostapp.com/music/CAN%20T%20FEEL%20MY%20FACE%20-%20THE%20WEEKND.mp3',
    'https://music-application.000webhostapp.com/music/High%20For%20This%20-%20The%20Weeknd.mp3',
    'https://music-application.000webhostapp.com/music/The_Weeknd_-_Blinding_Lights.mp3',
  ];
  List<String> harry = [
    'https://music-application.000webhostapp.com/music/One%20Direction%20-%20What%20Makes%20You%20Beautiful%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/One%20Direction%20-%20Story%20of%20My%20Life.mp3',
    'https://music-application.000webhostapp.com/music/One%20Direction%20-%20Steal%20My%20Girl.mp3',
    'https://music-application.000webhostapp.com/music/One%20Direction%20-%20Midnight%20Memories.mp3',
    'https://music-application.000webhostapp.com/music/One%20Direction%20-%20History.mp3',
    'https://music-application.000webhostapp.com/music/One%20Direction%20-%20Drag%20Me%20Down%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/Liam%20Payne%20-%20Strip%20That%20Down%20ft.%20Quavo.mp3',
    'https://music-application.000webhostapp.com/music/Harry%20Styles%20-%20Sweet%20Creature.mp3',
    'https://music-application.000webhostapp.com/music/Harry%20Styles%20-%20Adore%20You%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/Harry%20Styles%20-%20Golden%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/Harry%20Styles%20-%20Kiwi.mp3',
    'https://music-application.000webhostapp.com/music/Harry%20Styles%20-%20Sign%20of%20the%20Times%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/ZAYN%20-%20PillowTalk.mp3',
    'https://music-application.000webhostapp.com/music/ZAYN%20-%20Let%20Me%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/ZAYN%20-%20Dusk%20Till%20Dawn%20ft.%20Sia%20(Official%20Music%20Video).mp3',
    'https://music-application.000webhostapp.com/music/Harry%20Styles%20-%20Watermelon%20Sugar%20(Official%20Video).mp3',
  ];
  List<String> shawn = [
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes,%20Justin%20Bieber%20-%20Monster.mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20Lost%20In%20Japan.mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20In%20My%20Blood.mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20If%20I%20Can%20t%20Have%20You.mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20Stitches%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20Mercy.mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20There%20s%20Nothing%20Holdin%20Me%20Back.mp3',
    'https://music-application.000webhostapp.com/music/Shawn%20Mendes%20-%20Treat%20You%20Better.mp3',
  ];
  List<String> five = [
    'https://music-application.000webhostapp.com/music/5%20Seconds%20Of%20Summer%20-%20Lie%20To%20Me%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/5%20Seconds%20Of%20Summer%20-%20Youngblood%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/5%20Seconds%20of%20Summer%20-%20Don%20t%20Stop%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/5%20Seconds%20of%20Summer%20-%20Easier.mp3',
    'https://music-application.000webhostapp.com/music/5%20Seconds%20of%20Summer%20-%20Teeth%20(Official%20Video).mp3',
    'https://music-application.000webhostapp.com/music/5%20Seconds%20of%20Summer%20-%20Old%20Me%20(Official%20Video).mp3',
  ];
  final player = AudioPlayer();
  void initAudio(int artist, int soundNumber) {
    stopAudio();
    if (artist == 0) {
      var audio = weeknd[soundNumber];
      player.play('$audio');
    } else if (artist == 1) {
      var audio = harry[soundNumber];
      player.play('$audio');
    } else if (artist == 2) {
      var audio = shawn[soundNumber];
      player.play('$audio');
    } else if (artist == 3) {
      var audio = five[soundNumber];
      player.play('$audio');
    }
  }

  void stopAudio() {
    player.stop();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text('M U S I C   P L A Y E R',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w900),),
            ),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        number = Random().nextInt(14);
                        initAudio(0, number);
                      },
                      onLongPress: () {
                        stopAudio();
                      },
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('images/weeknd.jpg'),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        number = Random().nextInt(16);
                        initAudio(1, number);
                      },
                      onLongPress: () {
                        stopAudio();
                      },
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('images/harrystyles.jpg'),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        number = Random().nextInt(8);
                        initAudio(2, number);
                      },
                      onLongPress: () {
                        stopAudio();
                      },
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('images/shawn.jpg'),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        number = Random().nextInt(6);
                        initAudio(3, number);
                      },
                      onLongPress: () {
                        stopAudio();
                      },
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundImage: AssetImage('images/five.jpg'),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
