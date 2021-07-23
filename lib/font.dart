import 'package:flutter/material.dart';

class FontClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            'Custom Font',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontSize: 30,
            ),
          ),
        ],
      )),
    );
  }
}
