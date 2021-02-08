import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good Morning',
      theme: ThemeData(primarySwatch: Colors.black),
      home: Login9(),
    );
  }
}

var bannerItems = ["Burger", "Noodles", "Shawarma", "Pizza"];
var bannerImage = [
  "assets/picture1.jpg",
  "assets/picture2.jpg",
  "assets/picture3.jpg",
  "assets/picture4.jpg"
];

class Login9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.menu,
                            ),
                            onPressed: () {}),
                        Text(
                          'Foodies',
                          style: TextStyle(fontSize: 25),
                        ),
                        IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {},
                        )
                      ],
                    )),
                BannerWidgetArea()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
        PageController(viewportFraction: 0.8, initialPage: 1);
    List<Widget> banners = new List<Widget>();

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                bannerImage[x],
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
      );
      banners.add(bannerView);
    }
    return Container(
      height: screenHeight,
      width: screenWidth * 9 / 16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
