import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pic extends StatelessWidget {
  const pic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(80),
      child: Image.asset(
        'assets/images/shoe.png',
      ),
    );
  }
}
