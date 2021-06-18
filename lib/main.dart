import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
      home: MyPage()
  )
  );
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController _textcontroller=TextEditingController();
  bool _secureText=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              TextField(
                controller: _textcontroller ,


                obscureText: _secureText,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText:"Password",
                  hintStyle: TextStyle(color: Colors.greenAccent),
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.security),
                  suffixIcon: IconButton(icon: Icon(
                    _secureText ? Icons.visibility_off : Icons.visibility
                  ), onPressed: () {
                    setState(() {
                      _secureText= !_secureText;
                    });
                  },)

                ),
              )
            ],
          ),
        )
    );
  }
}

