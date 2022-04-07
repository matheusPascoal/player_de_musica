import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayWidget extends StatefulWidget {
  final Function? onTap;
  const PlayWidget({Key? key, this.onTap}) : super(key: key);

  @override
  State<PlayWidget> createState() => _PlayWidgetState();
}

class _PlayWidgetState extends State<PlayWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            'PLAY',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        margin: EdgeInsets.all(10),
        height: 60,
        width: 85,
        color: Colors.blue,
      ),
    );
  }
}
