import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListDinamisSeparated();
  }
}

class ListStatisClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.amber,
              ),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.amber,
              ),
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.amber,
              ),
            ),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.amber,
              ),
            ),
            child: Center(
              child: Text(
                '4',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListDinamisClass extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.blueAccent),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  '$number', // Ditampilkan sesuai item
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ListDinamisBuilderClass extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(
                color: Colors.cyan,
              ),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          );
        },
        itemCount: numberList.length,
      ),
    );
  }
}

class ListDinamisSeparated extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(
              color: Colors.cyan,
            ),
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int indext) {
        return Divider();
      },
      itemCount: numberList.length,
    );
  }
}
