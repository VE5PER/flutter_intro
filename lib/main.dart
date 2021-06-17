import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        widget_fn(4, "0xff8D43B3"),
        Padding(padding: EdgeInsets.all(3.0)),
        Expanded(
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              widget_fn(5, "0xff2AA650"),
              Padding(padding: EdgeInsets.all(3.0)),
              Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      widget_fn(2, "0xff58AAE8"),
                      Padding(padding: EdgeInsets.all(3.0)),
                      widget_fn(8, "0xffE73E33"),
                    ],
                  )),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(3.0)),
        widget_fn(2, "0xfffff900")
      ],
    ));
  }
}

Widget widget_fn(int flx, String colorval) {
  return (Expanded(
      flex: flx,
      child: Container(
        color: Color(int.parse(colorval)),
        child: Center(
          child: Text("#$colorval",
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center),
        ),
      )));
}
