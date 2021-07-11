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
  DateTime? pickDate;
  TimeOfDay? pickTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pickDate = DateTime.now();
    pickTime = TimeOfDay.now();
  }

  _pickDate(BuildContext context) async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 10),
        lastDate: DateTime(DateTime.now().year + 10));
    if (date != null) {
      setState(() {
        pickDate = date;
      });
    }
  }

  _pickTime(BuildContext context) async {
    TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time != null) {
      setState(() {
        pickTime = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
                "Date: ${pickDate!.day} - ${pickDate!.month} - ${pickDate!.year}"),
            onTap: () {
              _pickDate(context);
            },
          ),
          ListTile(
              title: Text("Time: ${pickTime!.hour} : ${pickTime!.minute} "),
              onTap: () {
                _pickTime(context);
              })
        ],
      )),
    );
  }
}
