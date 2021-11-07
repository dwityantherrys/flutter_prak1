import 'dart:ui';

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
      appBar: AppBar(
        title: Text("My Apps"),
      ),
      body: Column(
        children: [
          buttonTopSection(),
          centerImageSection(),
          contentBottomSetion(),
          contentBottomSetion(),
        ],
      ),
    ));
  }

  Widget buttonTopSection() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "BERITA TERBARU",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        Container(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "PERTANDINGAN HARI INI",
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ],
    ));
  }

  //IMAGESSSS
  Widget centerImageSection() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.only(left: 10, bottom: 20),
              color: Color(0xffdd42f5),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Transfer",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              height: 310,
            ),
            Container(
              height: 240,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              child: Text(
                "Costa Mendekat Ke Palmeras",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(right: 15, left: 15),
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img_1.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
              child: Container(),
            ),
          ]))
        ],
      ),
    );
  }

  Widget contentBottomSetion() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 15, left: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                    image: AssetImage('assets/img_2.jpg'),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.white,
                ),
                height: 90,
                width: 170,
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(1),
                  ),
                  height: 90,
                  child: Center(
                    child: Text(
                      "Pique bilang wasit untungkan Madrid, Koeman tepok jidat.",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(1),
                ),
                height: 30,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Barcelona Feb 13, 2021",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
