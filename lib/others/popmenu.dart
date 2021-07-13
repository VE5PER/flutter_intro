import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  void selectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        print("Settings");
        break;
      case 1:
        print("Privacy");
        break;
      case 2:
        print("Logout");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop Up Menu"),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Settings"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Privacy"),
                value: 1,
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Logout!"),
                  ],
                ),
                value: 2,
              ),
            ],
            onSelected: (item) {
              selectedItem(context, item);
            },
          )
        ],
      ),
    );
  }
}
