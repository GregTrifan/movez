import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30),
                )),
            Padding(
                padding: EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: "Email"),
                )),
            Padding(
                padding: EdgeInsets.only(right: 30, left: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: "Password"),
                )),
            Padding(
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(
                            Size.fromHeight(50))),
                    onPressed: () => {},
                    child: Text("Connect")))
          ],
        ));
  }
}
