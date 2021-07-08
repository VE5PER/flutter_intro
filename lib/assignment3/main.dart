import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'favPage.dart';

List<String> favorites = [];
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Startup Name Generator",
        )),
        actions: [
          Container(
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (favorites.length == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => favPage(value: favorites)));
          } else {
            alert(context);
          }
        },
        child: Icon(Icons.settings),
      ),
      body: getListView(),
    );
  }
}

List<String> getListElem() {
  var items = List<String>.from(all.take(50));
  return items;
}

Widget getListView() {
  bool _state;
  var listItem = getListElem();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(listItem[index]),
      trailing: FavoriteButton(
        valueChanged: (_state) {
          if (_state) {
            favorites.add(listItem[index]);
          } else {
            favorites.remove(listItem[index]);
          }
        },
      ),
    );
  });
  return listView;
}

void alert(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Invalid Number of Selections"),
    content: Text("Please Favorite exactly 4 entries"),
    actions: [
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK")),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
