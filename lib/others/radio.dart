import 'package:flutter/cupertino.dart';
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
  int selectedRadio = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(var val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            Radio(
                value: 1,
                groupValue: selectedRadio,
                onChanged: (val) {
                  print("Radio");
                  setSelectedRadio(val);
                },
            activeColor: Colors.red,),
            Radio(value: 2, groupValue: selectedRadio, onChanged: (val) {print("Radio");
            setSelectedRadio(val);},activeColor: Colors.green,),*/
            RadioListTile(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              },
              title: Text("Radio 1"),
              subtitle: Text("R1 sub"),
              activeColor: Colors.red,
            ),
            RadioListTile(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              },
              title: Text("Radio 2"),
              subtitle: Text("R2 sub"),
              activeColor: Colors.green,
              secondary: ElevatedButton(child: Text("Button"),onPressed: (){},),
            ),
          ],
        ),
      ),
    );
  }
}



class User  {
  int userId;
  String firstName;
  String lastName;
  User({this.userId=0,this.firstName='',this.lastName=''});
  static List<User>
}