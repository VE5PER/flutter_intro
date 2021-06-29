import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: getListView(),
    );
  }
}

List<String> getListElem() {
  var items = List<String>.generate(100, (index) => "Item $index");
  return items;
}

Widget getListView() {
  var listItem = getListElem();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_back_ios),
      title: Text(listItem[index]),
      onTap: () {
        showSnackbar(context, listItem[index]);
      },
    );
  });
  return listView;
}

void showSnackbar(BuildContext context, String item) {
  var mySnackBar = SnackBar(
    content: Row(
      children: [
        Icon(
          Icons.info,
          size: 15,
        ),
        SizedBox(
          width: 15,
        ),
        Text("You have tapped $item"),
      ],
    ),
    elevation: 15,
    backgroundColor: Colors.grey,
    duration: Duration(seconds: 5),
    shape: StadiumBorder(
      side: BorderSide(
        color: Colors.black,
        width: 2,
      ),
    ),
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: "Undo",
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
}
