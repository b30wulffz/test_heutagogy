// import 'package:flutter/material.dart';
// // import 'dart:ui';
// // import 'package:flutter/rendering.dart';


// void main() => runApp(Home());


import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';

import './splash.dart';
import './home.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new Home(),
      title: new Text('Welcome In SplashScreen',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      // onClick: ()=>print("Flutter Egypt"),
      // loaderColor: Colors.green
    );
  }
}