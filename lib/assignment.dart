import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController _textcontroller = TextEditingController();
  bool _secureText = true;
  String _errorMsg = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/corgi1.jpg'),
                          fit: BoxFit.cover,
                        ))),
                textGen("Saurav S", 60, "0xFFFFFFFF"),
                textGen("Flutter Developer", 45 , "0xFF64FFDA"),
                Divider(
                  color: Colors.white,
                  thickness: 1.2,
                  indent: 150,
                  endIndent: 150,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 6,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.teal),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      labelStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 6,
                  ),
                  child: TextField(
                    style: TextStyle(color: Colors.teal),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      labelStyle: TextStyle(color: Colors.teal),
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget textGen(String inp, double size, String clr) {
  return Text(
    inp,
    style: TextStyle(
      fontSize: size,
      letterSpacing: 3.0,
      fontFamily: 'Pacifico',
      color: Color(int.parse(clr)),
    ),
  );
}

