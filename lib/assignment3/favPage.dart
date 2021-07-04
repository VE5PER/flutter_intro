import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favPage extends StatelessWidget {
  final value;
  const favPage({Key? key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Favorites!"),
      ),
      body: Container(

        child: ListView.builder(
            itemBuilder: (context, index) {

          return Card(
            color: Colors.greenAccent,
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: Center(child: Text(value[index],style: TextStyle(
              fontSize: 30,
            ),)),
          );
        },itemCount: value.length,),
      ),
    );
  }
}
