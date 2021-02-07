import 'package:flutter/material.dart';

void main() {
  runApp(Login8());
}

class Login8 extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login8> {
  int photoIndex = 0;
  List<String> photos = [
    'assets/image10.jpg',
    'assets/icon1.png',
    'assets/Kavya.png'
  ];

  void previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Center(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                        image: AssetImage(photos[photoIndex]),
                        fit: BoxFit.cover)),
                height: 400,
                width: 300,
              ),
              Positioned(
                top: 375.0,
                left: 25.0,
                right: 25.0,
                child: SelectedPhoto(
                    numberOfDots: photos.length, photoIndex: photoIndex),
              )
            ],
          ),
        ),
        /*Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Next'),
              onPressed: nextImage,
              elevation: 5.0,
              color: Colors.grey,
            ),
            SizedBox(width: 10.0),
            RaisedButton(
              child: Text('Prev'),
              onPressed: previousImage,
              elevation: 5.0,
              color: Colors.grey,
            ),
          ],
        ),*/
        SizedBox(height: 20),
        Column(
          children: [
            Container(
              child: Text(
                'Live Tracking',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Container(
              child: Text(
                'Real time tracking of your food on the app once you placed the order',
                style: TextStyle(fontSize: 15, color: Colors.grey),
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
              /* Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Login9();
              }));*/
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
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});
  /*Widget _inactivePhoto() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 3.2, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
        ),
      ),
    );
  }

  Widget activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }*/

  List<Widget> buildDots() {
    List<Widget> dots = [];
    /*for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? activePhoto() : _inactivePhoto());
    }*/
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildDots(),
      ),
    );
  }
}
