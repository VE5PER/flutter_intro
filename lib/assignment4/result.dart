import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatefulWidget {
  final num? weight;
  final num? height;
  final num? age;
  final bool? gender;
  const result({Key? key, this.weight, this.height, this.age, this.gender})
      : super(key: key);

  @override
  _resultState createState() => _resultState(weight!, height!, age!, gender!);
}

class _resultState extends State<result> {
  num weight = 0;
  num height = 0;
  num age = 0;
  bool gender = true;
  _resultState(this.weight, this.height, this.age, this.gender);
  @override
  Widget build(BuildContext context) {
    num bmi = (weight * (1 / height) * (1 / height) * 10000.0);
    String result = 'WARNING';
    var status=Colors.orange;
    String message='You are under weight. Gain some more!';
    if (bmi > 18 && bmi < 25) {
      result = 'NORMAL';
      status=Colors.green;
      message='You have a normal body. Good Job!';
    } else if (bmi >= 25 && bmi < 40) {
      result = "ALERT";
      status=Colors.deepOrange;
      message='You are overweight. Try losing some!';
    } else if (bmi >= 40) {
      result = "CAUTION";
      status=Colors.red;
      message='You are obese. Start dieting NOW!!';
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                padding: EdgeInsets.only(
                  right: 200,
                  top: 20,
                  bottom: 20,
                )),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(color: Color(0xFF1d1e32)),
              height: 450,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(result,style: TextStyle(
                    color: status,
                    fontSize: 25,
                  ),),
                  Text(bmi.toStringAsFixed(1),style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Normal BMI range:",style: TextStyle(
                      color: Color(0xFF858995),
                      fontSize: 25,

                  ),),
                  Text("18.5 - 25 kg/m2",style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,)),
                  Text(message,style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),textAlign: TextAlign.center,),
                  Container(child: Text("SAVE RESULT", style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),),
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  color: Color(0xFF181a2f))

                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF090C20),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0C23),
        leading: Icon(Icons.menu),
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: Color(0xFFea1554),
          ),
          child: Center(
            child: Text(
              "RE-CALCULATE YOUR BMI",
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
