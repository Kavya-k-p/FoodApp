import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon1.png'), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/Kavya.png'),
                  ),
                  Container(
                      padding: const EdgeInsets.only(bottom: 8),
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
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'FOOD DELIVERY',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
