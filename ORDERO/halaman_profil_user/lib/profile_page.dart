import 'package:flutter/material.dart';
import 'login_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Drawer"),
      ),
      drawer: DrawerCode(),
      body: Center(
        child: Text("Profile Page"),  // this is profile page
      ),
    );
  }
}
