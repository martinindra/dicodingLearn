import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColumnClass();
  }
}

class RowClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Main Axis Aligment Space Evenly"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
        Text("Main Axis Aligment Space Between"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
        Text("Main Axis Aligment Space Around"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
        Text("Main Axis Aligment Start"),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
        Text("Main Axis Aligment center"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
        Text("Main Axis Aligment end"),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              onPressed: null,
              icon: Icon(Icons.share),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
          ],
        ),
      ],
    );
  }
}

class ColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Sebuah Judul",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("lorem ipsum dolor sit amet")
      ],
    );
  }
}
