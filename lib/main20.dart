import 'package:flutter/material.dart';
import 'main6.dart';

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
              child: Login()),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image(
        alignment: Alignment.center,
        image: AssetImage(
          'assets/Kavya.png',
        ),
      ),
      SingleChildScrollView(
          child: Column(
        children: [
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
          Container(
            child: Text(
              'FOOD DELIVERY',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 10),
          FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Scndpg();
                }));
              },
              child: Container(
                height: 50,
                width: 250,
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(35.0),
                    ),
                    color: Colors.white),
              )),
        ],
      ))
    ]);
  }
}
