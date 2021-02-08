import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'main6.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SingleChildScrollView(
              child: Column(
            children: [
              Container(
                  child: RichText(
                      text: TextSpan(
                          text: 'Meal',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                    TextSpan(
                        text: 'Monkey',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black))
                  ]))),
              Container(
                child: Text(
                  'FOOD DELIVERY',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ))
        ]),
        nextScreen: Scndpg(),
        duration: 3000,
      ),
    );
  }
}
