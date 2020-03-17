import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      backgroundColor: Colors.white,
      image: Image.asset('assets/loading1.gif'),
      loaderColor: Colors.black,
      photoSize:100.0,
      navigateAfterSeconds: MainScreen(),
      
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Loading Screen'),
      ),
      body: Center(
        child: Text(
          'HALLO',
        style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
        ),
      ),
      );
  }
}