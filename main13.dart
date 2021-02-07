import 'package:flutter/material.dart';
import 'main11.dart';

void main() {
  runApp(Login3());
}

class Login3 extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Column(
                children: [
                  Container(
                    child: Text(
                      'Find Food You Love',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    child: Text(
                      'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 20),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Login4();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(35.0),
                        ),
                        color: Colors.orange[900]),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
