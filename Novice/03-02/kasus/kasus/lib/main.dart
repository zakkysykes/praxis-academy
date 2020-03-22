import 'package:flutter/material.dart';
import 'package:json_latihan/post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API DEMO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null) ? postResult.id + "|" + postResult.name + "|" + postResult.job + "|" +  postResult.created : "Tidak Ada Data"),
              RaisedButton(onPressed: () {
                PostResult.connectToAPI("Kaa", "Bidan").then((value) {
                  postResult=value;
                  setState(() {
                    
                  });
                });
              },
              child: Text("POST"),
              )
            ],
          )
        ),
      ),
      
    );
  }
}