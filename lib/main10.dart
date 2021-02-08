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
                      'Reset Password',
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    child: Text(
                      'Please enter your email to receive a link to create a new password via email',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(children: [
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.grey[200].withOpacity(0.9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 50.0,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                        )),
                  ),
                )
              ]),
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
                        'Send',
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
