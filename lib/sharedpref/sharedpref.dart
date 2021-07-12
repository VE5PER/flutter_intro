import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                bool? _visitedFlag = await getVistingFlag();
                if (_visitedFlag == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                  setVistingFlag();
                }
              },
              child: Text("Proceed"),
            ),
            TextButton(
                onPressed: () {
                  revokeVistingFlag();
                },
                child: Text("Reset Access"))
          ],
        ),
      ),
    );
  }
}

setVistingFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("alreadyVisited", true);
}

revokeVistingFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("alreadyVisited", false);
}

getVistingFlag() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool? alreadyVisited = preferences.getBool("alreadyVisited");
  return alreadyVisited;
}
