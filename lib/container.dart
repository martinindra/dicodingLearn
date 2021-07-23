import 'package:flutter/material.dart';

class ContainerTry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Hi",
        style: TextStyle(fontSize: 40),
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(1, 1),
            blurRadius: 10,
          ),
        ],
        border: Border.all(
          color: Colors.green,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
