import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SettingsPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              "Settings Page IDK",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
