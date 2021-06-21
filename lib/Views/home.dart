import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:movez/Views/counter.dart';
import 'settings.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final modController = TextEditingController();
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    modController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            Counter(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            SettingsPage()
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) {
            setState(() => _selectedIndex = index);
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Colors.red,
                inactiveColor: Colors.white),
            BottomNavyBarItem(
                icon: Icon(Icons.people),
                title: Text('Users'),
                activeColor: Colors.purpleAccent,
                inactiveColor: Colors.white),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Messages'),
                activeColor: Colors.pink,
                inactiveColor: Colors.white),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                activeColor: Colors.blue,
                inactiveColor: Colors.white),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
