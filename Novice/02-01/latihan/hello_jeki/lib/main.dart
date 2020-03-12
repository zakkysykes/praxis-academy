import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang di Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selamat Datang di Flutter'),

        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    )
  }
}