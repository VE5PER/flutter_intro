import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page1.dart';
import 'package:english_words/english_words.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          color: Colors.blue,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/corgi1.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
                Text(
                  "Corgi",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "doggo",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page1()));
          },
        ),
        SizedBox(
          height: 5,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            nouns.take(50).forEach(print);          },
        ),
        SizedBox(
          height: 5,
        ),
        ListTile(
          onTap: () {
            alert(context);
          },
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Logout",
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    ));
  }
}

void alert(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Alert"),
    content: Text("Oops"),
    actions: [
      ElevatedButton(onPressed: () {}, child: Text("YES")),
      ElevatedButton(onPressed: () {}, child: Text("NO")),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
