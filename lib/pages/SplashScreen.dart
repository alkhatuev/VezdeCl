import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final String nextRoute;
  SplashScreen({this.nextRoute});
  // ignore: empty_constructor_bodies
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
 void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
        () { Navigator.of(context).pushReplacementNamed(widget.nextRoute); }
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'image/vezde.png',
              height: 1270,
              width: 1170,
            ),
          ],
        ),
      ),
    );
  }
}