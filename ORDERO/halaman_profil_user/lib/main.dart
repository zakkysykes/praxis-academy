import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile Page UI",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          //isi body: Container
          decoration: BoxDecoration(
            //jumlah stop berbanding lurus dengan jumlah warna
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              //jumlah stop berbanding lurus dengan jumlah warna
              stops: [0.3, 0.6, 0.9],
              colors: [
                Color.fromRGBO(12, 235, 235, 1),
                Color.fromRGBO(32, 227, 178, 1),
                Color.fromRGBO(41, 255, 198, 1),
              ],
            ),
          ),
          child: Container(
            //isi child: Container
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  //jumlah stop berbanding lurus dengan jumlah warna
                  stops: [0.3, 0.6, 0.9],
                  colors: [
                    Color.fromRGBO(12, 235, 235, 1),
                    Color.fromRGBO(32, 227, 178, 1),
                    Color.fromRGBO(41, 255, 198, 1),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18.0,
                      color: Colors.transparent.withOpacity(.5),
                      spreadRadius: 12.5),
                ]),
            margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                Text(
                  'Muhammad Maulana Dzaky',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                  ),
                ),
                Text(
                  'USER',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                    color: Colors.red[400],
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.teal[300],
                  ),
                ),
                Text("Informasi Tentang Pengguna"),
                Card(
                    color: Colors.white70,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '+62 8522508XXXX',
                        style:
                            TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
                      ),
                    )),
                Card(
                  color: Colors.white70,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'Yogyakarta',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Neucha'),
                    ),
                  ),
                ),
                FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('EDIT PROFILE'),
                        onPressed: () {},
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}