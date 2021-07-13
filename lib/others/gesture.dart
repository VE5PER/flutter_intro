import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          width: double.infinity,
          height: double.infinity,
          child: MainContent(),
        ),
      ),
    );
  }
}

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  String dragDir = '';
  String xPos = '';
  String yPos = '';
  void _onVerticalDragStartHandler(DragStartDetails details) {
    setState(() {
      dragDir = "VERTICAL";
      xPos = details.globalPosition.dx.floorToDouble().toString();
      yPos = details.globalPosition.dy.floorToDouble().toString();
    });

  }

  void _onHorizontalDragStartHandler(DragStartDetails details) {
    setState(() {
      dragDir = "HORIZONTAL";
      xPos = details.globalPosition.dx.floorToDouble().toString();
      yPos = details.globalPosition.dy.floorToDouble().toString();
    });

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("Tapped");
      },
      onLongPress: (){
        print("Long Press");
      },
      dragStartBehavior: DragStartBehavior.start,
      behavior: HitTestBehavior.translucent,
      onVerticalDragStart: _onVerticalDragStartHandler,
      onHorizontalDragStart: _onHorizontalDragStartHandler,
      child: Container(
        child: Column(
          children: [
            Text(this.dragDir),
            Text(this.xPos),
            Text(this.yPos),
          ],
        ),
      ),
    );
  }
}
