import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movez/Views/login/login.dart';

class SettingsPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "ACCOUNT",
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person_add),
                  title: Text("Register"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.perm_identity),
                  title: Text("Log In"),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Album'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
