import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomePlayes extends StatefulWidget {
  const HomePlayes({Key? key}) : super(key: key);

  @override
  State<HomePlayes> createState() => _HomePlayesState();
}

class _HomePlayesState extends State<HomePlayes> {
  final player = AudioPlayer();

  setMusic() async {
    await player
        .setUrl('https://8335.brasilstream.com.br/stream?1649426477411');
  }

  @override
  void initState() {
    setMusic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.green,
              Colors.blue,
            ])),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(80),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://pbs.twimg.com/profile_images/328610068/lib04.jpg'),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Colors.black, style: BorderStyle.solid, width: 5),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(microseconds: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        player.setLoopMode(LoopMode.one);
                      });
                    },
                    child: Icon(
                      Icons.refresh_rounded,
                      size: 80,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(microseconds: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        player.play();
                      });
                    },
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 80,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(microseconds: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        player.pause();
                      });
                    },
                    child: Icon(
                      Icons.pause_rounded,
                      size: 80,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(microseconds: 10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        player.stop();
                      });
                    },
                    child: Icon(
                      Icons.stop_rounded,
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
