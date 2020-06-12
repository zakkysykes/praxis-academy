import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile_page.dart';
import 'setting_page.dart';

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: <Widget>[
                Flexible(
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://secure.gravatar.com/avatar/3a719607819fc579c2aafd4d21dad3d1?s=96&d=mm&r=g'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                Text(
                  "JEKI",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "Yogyakarta",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Profile"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text("Setting"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Setting()));
              print("Go to Settings");
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Logout"),
            onTap: () {
              print("Logout Users");
              Navigator.pop(context);
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}