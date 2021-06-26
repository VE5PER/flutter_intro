import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'portrait.dart';
import 'landscape.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nike"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add_shopping_cart_sharp))
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(color: Colors.blue[800]),
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portrait();
          } else {
            return landscape();
          }
        },
      ),
    );
  }
}
