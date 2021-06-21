import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

/*

 */
class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  final modController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    modController.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      // setState is somewhat similar to useState from React 16.8+
      var val = int.parse(modController.text);
      _counter += val;
    });
  }

  void _decrementCounter() {
    setState(() {
      var val = int.parse(modController.text);
      _counter -= val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The Counter is $_counter',
            ),
            Padding(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: TextField(
                decoration: InputDecoration(labelText: "Change number"),
                keyboardType: TextInputType.number,
                controller: modController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 31),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 31),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: _decrementCounter,
                backgroundColor: Colors.red,
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
            ),
          )
        ],
      ),
    );
  }
}
