import 'package:flutter/material.dart';
import 'result.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool genderChoice = true;

  num age = 20;
  num heightVal = 160;
  num weightVal = 60;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0C23),
        leading: Icon(Icons.menu),
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      genderChoice = true;
                      weightVal = 60;
                    });
                  },
                  child: gender("MALE", Icons.male, genderChoice),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      genderChoice = false;
                      weightVal = 50;
                    });
                  },
                  child: gender("FEMALE", Icons.female, !genderChoice),
                ),
              ),
            ]),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF111428)),
              child: Column(
                children: [
                  Text("HEIGHT",
                      style: TextStyle(color: Colors.grey, fontSize: 25)),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: heightVal.round().toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: "cm",
                        style: TextStyle(color: Colors.grey, fontSize: 20)),
                  ])),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SliderTheme(
                      data: SliderThemeData(
                        thumbColor: Colors.red,
                        trackHeight: 0.1,
                        activeTrackColor: Colors.white,
                        overlayColor: Colors.red.withOpacity(0.5),
                      ),
                      child: Slider(
                        inactiveColor: Colors.grey,
                        min: genderChoice ? 150 : 120,
                        max: genderChoice ? 220 : 180,
                        value: heightVal.toDouble(),
                        onChanged: (val) {
                          setState(() {
                            heightVal = val;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            weightVal.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    weightVal--;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff1c1e33)),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    weightVal++;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 8),
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff1c1e33)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF111428)),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              age.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(7),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 45,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff1c1e33)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    padding: EdgeInsets.all(7),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 45,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff1c1e33)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF111428)),
                    )),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFF090C20),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => result(
                        weight: weightVal,
                        height: heightVal.round(),
                        age: age,
                        gender: genderChoice,
                      )));
        },
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: Color(0xFFea1554),
          ),
          child: Center(
            child: Text(
              "CALCULATE YOUR BMI",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget gender(String type, IconData icon, bool select) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    padding: EdgeInsets.all(25),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: select ? Colors.white : Colors.grey, size: 65),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(type,
              style: TextStyle(
                  color: select ? Colors.white : Colors.grey, fontSize: 20)),
        ),
      ],
    ),
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF1d1f33)),
  );
}
