import 'package:flutter/material.dart';

class ImageScreenClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Text("Image Network"),
        Image.network(
          'https://picsum.photos/200/300',
          height: 200,
          width: 200,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text("Image Assets"),
        Image.asset(
          "images/gambar1.png",
          width: 200,
          height: 200,
        )
      ],
    ));
  }
}
