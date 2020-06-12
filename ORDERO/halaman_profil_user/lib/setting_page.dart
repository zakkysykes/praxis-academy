import 'package:flutter/material.dart';

import 'login_page.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Drawer"),
      ),
      drawer: DrawerCode(),
      body: Center(
        child: Text("Setting Page"), // Then here is setting page
      ),
    );
  }
}