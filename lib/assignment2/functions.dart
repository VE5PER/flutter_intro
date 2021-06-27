
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonGen(String txt) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 3),
    child: TextButton(
      onPressed: () {},
      child: Text(txt),
      style: TextButton.styleFrom(
        primary: Colors.blue[800],
        backgroundColor: Colors.grey[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
  );
}

Widget textGen(String str) {
  return RichText(
      text: TextSpan(children: [
        WidgetSpan(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
            child: Icon(
              Icons.circle,
              size: 12,
              color: Colors.blue[800],
            ),
          ),
        ),
        TextSpan(
            text: str,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            )),
      ]));
}
