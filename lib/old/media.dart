import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {
    Orientation orientation =
        MediaQuery.of(context).orientation; // ALternate way
    double height = (MediaQuery.of(context).padding.top + kToolbarHeight) / 2.0;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Media Query")),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5 - height,
                    color: Colors.red,
                    child: Text("Hello1"),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5 - height,
                    color: Colors.green,
                    child: Text("Hello2"),
                  )
                ],
              );
            } else {
              return Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height ,
                    color: Colors.red,
                    child: Text("Hello1"),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.green,
                    child: Text("Hello2"),
                  )
                ],
              );
            }
          },
        ));
  }
}
