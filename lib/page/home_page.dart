import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:player_de_musica/widgets/pause_widget.dart';
import 'package:player_de_musica/widgets/play_widgets.dart';

class HomePlayes extends StatefulWidget {
  const HomePlayes({Key? key}) : super(key: key);

  @override
  State<HomePlayes> createState() => _HomePlayesState();
}

class _HomePlayesState extends State<HomePlayes> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache playerLocal = AudioCache();

  Pause() {}

  play() async {
    await audioPlayer.play('assets/musica.mp3', isLocal: true);
  }

  // playLocal() async {
  //   playerLocal.play('musica.mp3');
  // }

  @override
  void initState() {
    //playLocal();
    play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Player Musica')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlayWidget(),
                PauseWidget(
                  onTap: () {
                    setState(() {
                      playerLocal;
                    });
                  },
                )
              ],
            )
          ],
        ));
  }
}
