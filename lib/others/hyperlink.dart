import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  _launchURL() async {
    if (await canLaunch('google.com')) {
      await launch('www.google.com');
    } else {
      throw 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "To Register ",
                style: TextStyle(color: Colors.black, fontSize: 20)),
            TextSpan(
                text: "Click Here!",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    _launchURL();
                  }),
          ]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
