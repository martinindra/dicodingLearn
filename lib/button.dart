import 'package:flutter/material.dart';

class ButtonClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text("Elevated or Raised Button"),
          ),
          TextButton(
            onPressed: null,
            child: Text("Text Button"),
          ),
          OutlineButton(
            onPressed: null,
            child: Text("Outlined Button"),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add),
            tooltip: "Add data",
          )
        ],
      ),
    );
  }
}
