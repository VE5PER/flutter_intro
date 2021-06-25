import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.green,
            child: Container(
              //height: 600,

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                      'https://bestestquote.com/wp-content/uploads/2020/08/Corgi-Quotes_featured_BestestQuote.jpg'),
                  Text(
                    "You should see corgis at sunset in the snow. It’s their finest hour. About five o’clock they glow like copper. Then they come in and lie in front of the fire like a string of sausages.",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "-Corgi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  ButtonBar(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "OK!",
                          )),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Not OK!"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
