import 'package:flutter/material.dart';
import 'main10.dart';

void main() {
  runApp(Login2());
}

class Login2 extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login2> {
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
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          'Add your details to sign up',
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
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                            )),
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
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
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
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
                              hintText: 'Mobile No',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
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
                              hintText: 'Address',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.3),
                              )),
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
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                            )),
                      ),
                    ),
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
                            hintText: 'Confirm Password',
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
                          return Login3();
                        }));
                      },
                      child: Container(
                        height: 50,
                        width: 250,
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(35.0),
                            ),
                            color: Colors.orange[900]),
                      )),
                  SizedBox(height: 20),
                  Container(
                      child: RichText(
                          text: TextSpan(
                              text: 'Already have an Account?',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
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
