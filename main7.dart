import 'package:flutter/material.dart';
import 'main8.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Add your details to login',
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
                            hintText: 'Your Email',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                            )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
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
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                            )),
                      ),
                    )
                  ]),
                  SizedBox(height: 20),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Login2();
                        }));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(35.0),
                            ),
                            color: Colors.orange[900]),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'or Login With',
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(
                            'Login with Facebook',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(35.0),
                            ),
                            color: Colors.blue[900]),
                      )),
                  SizedBox(height: 20),
                  FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(
                            'Login with Google',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(35.0),
                            ),
                            color: Colors.red),
                      )),
                  SizedBox(height: 160),
                  Container(
                      child: RichText(
                          text: TextSpan(
                              text: 'Do you have an Account?',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange))
                      ])))
                ],
              )),
        ),
      ),
    );
  }
}
