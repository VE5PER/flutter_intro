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
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
              ],
              begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            image: DecorationImage(
              image: NetworkImage('https://bestestquote.com/wp-content/uploads/2020/08/Corgi-Quotes_featured_BestestQuote.jpg'),
              fit: BoxFit.cover,
            ),
          ),

        ),
        backgroundColor: Colors.redAccent,
        elevation: 20,
        title: Text("AppBar Experimental"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.account_circle_rounded)),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.notification_important),),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.accessibility_rounded),),
      ],),
    );
  }
}
