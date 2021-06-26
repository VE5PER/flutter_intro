import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            /*indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 7.0,
            //isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.greenAccent),*/
            tabs: [
              Tab(
                text: "TAB 1",
              ),
              Tab(
                text: "TAB 2",
              ),
              Tab(
                text: "TAB 3",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),
          ],
        ),
      ),
    );
  }
}

