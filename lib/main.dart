import 'package:flutter/material.dart';
import 'container.dart';
import 'rowcolumn.dart';
import 'button.dart';
import 'dropdownButton.dart';
import 'textInput.dart';
import 'image.dart';
import 'font.dart';
import 'listview.dart';
import 'expandedflexible.dart';
import 'navigation.dart';
// import 'responsive.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(FirstNaivgationScreen());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Oswald',
          primarySwatch: Colors.amber,
        ),
        home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  final String message = "Hello Second Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListViewClass(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondNavigationScreen(message),
            ),
          );
        },
      ),
    );
  }
}
