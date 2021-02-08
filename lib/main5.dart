import 'package:flutter/material.dart';

void main() {
  runApp(Scndpg());
}

class Scndpg extends StatefulWidget {
  @override
  ScndpgState createState() => ScndpgState();
}

class ScndpgState extends State<Scndpg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                top: 0,
                bottom: 500,
                right: 0,
                left: 0,
                child: Container(
                  width: 400,
                  height: 150,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
