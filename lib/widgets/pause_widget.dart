import 'package:flutter/material.dart';

class PauseWidget extends StatefulWidget {
  final Function? onTap;
  const PauseWidget({Key? key, this.onTap}) : super(key: key);

  @override
  State<PauseWidget> createState() => _PauseWidgetState();
}

class _PauseWidgetState extends State<PauseWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            'PAUSE',
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
