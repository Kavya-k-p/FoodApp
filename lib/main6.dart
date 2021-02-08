import 'package:flutter/material.dart';
import 'main7.dart';

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
              Positioned(
                top: 400,
                bottom: 0,
                right: 50,
                left: 50,
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image(image: AssetImage('assets/Kavya.png')),
                        SizedBox(height: 10),
                        Container(
                            child: RichText(
                                text: TextSpan(
                                    text: 'Meal',
                                    style: TextStyle(
                                      color: Colors.orange,
                                    ),
                                    children: <TextSpan>[
                              TextSpan(
                                  text: 'Monkey',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black))
                            ]))),
                        Container(
                          child: Text(
                            'FOOD DELIVERY',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Text(
                              'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep'),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                        child: Container(
                          height: 50,
                          width: 250,
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(35.0),
                              ),
                              color: Colors.orange),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          width: 250,
                          child: Center(
                            child: Text(
                              'Create an Account',
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
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
