import 'package:flutter/material.dart';
import 'main12.dart';

void main() {
  runApp(Login4());
}

class Login4 extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login4> {
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
                      'We have sent an OTP to your Mobile',
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
                      'Please check your mobile number 071*****12 continue to reset your password',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 20),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Login5();
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
                  )),
              Container(
                  child: RichText(
                      text: TextSpan(
                          text: 'Didnt Recieve?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                    TextSpan(
                        text: 'Click Here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.orange))
                  ])))
            ]),
          ),
        ),
      ),
    );
  }
}
