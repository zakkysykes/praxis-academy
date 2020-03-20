

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: MyApp(),

));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Container(
        child: Hero(
          tag: 'Hero Animation',
          child: GestureDetector(
            child: FlutterLogo(size: 200),
            onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => AnimationHero())),
          ),
        ),
      ),
    );
  }
}

class AnimationHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Hero(
        tag: 'Hero animation',
        child: FlutterLogo(
          size: 400,
          ),
    ),
    ),
    );
  }
}