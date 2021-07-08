import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gridview"),
        ),
        body: ListView.separated(separatorBuilder: 
        (context,builder){
          return Divider(
            height: 3,
            color: Colors.red,
          );
        },itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Text(
                index.toString(),
                style: TextStyle(fontSize: 25),
              ),
            ),
          );
        }, itemCount: 10,));
  }
}
