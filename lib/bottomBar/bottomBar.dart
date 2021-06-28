import 'package:flutter/material.dart';
import 'tab3.dart';
import 'tab2.dart';
import 'tab1.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> _pages = [
    tab1(),
    tab2(),
    tab3(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Bottom Nav Bar")),
      ),
      body: Container(child: _pages.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        elevation: 50,
        backgroundColor: Colors.greenAccent,
        //mouseCursor: SystemMouseCursors.grab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search", backgroundColor: Colors.orange),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera",backgroundColor: Colors.pink),
        ],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        unselectedFontSize: 15,
        unselectedItemColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
