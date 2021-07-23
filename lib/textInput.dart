import 'dart:ffi';

import 'package:flutter/material.dart';

//just with value name
class TextInputClass extends StatefulWidget {
  @override
  _TextInputClassState createState() => _TextInputClassState();
}

class _TextInputClassState extends State<TextInputClass> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Write your name here...",
              labelText: "Your Name",
            ),
            onChanged: (String value) {
              setState(
                () {
                  name = value;
                },
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text("Helo, $name"),
                      );
                    });
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}

// with controller

class TextInputController extends StatefulWidget {
  @override
  _TextInputControllerState createState() => _TextInputControllerState();
}

class _TextInputControllerState extends State<TextInputController> {
  TextEditingController _controller = TextEditingController();
  bool ligthOn = false;
  String language = "";
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: "Input your name here",
              labelText: "Your Name",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text('Hello, ${_controller.text}'),
                  );
                },
              );
            },
            child: Text("Input Name"),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text("Switch Input"),
          Switch(
            value: ligthOn,
            onChanged: (bool value) {
              setState(() {
                ligthOn = value;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(ligthOn ? 'Light_on' : 'Light_off'),
                  duration: Duration(seconds: 1),
                ),
              ); //onChanged
            },
          ),
          Text("Radio Input"),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Radio<String>(
                  value: 'Dart',
                  groupValue: language,
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        language = value;
                        showSnackbar();
                      }
                    });
                  },
                ),
                title: Text('Dart'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Kotlin',
                  groupValue: language,
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        language = value;
                        showSnackbar();
                      }
                    });
                  },
                ),
                title: Text('Kotlin'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Swift',
                  groupValue: language,
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        language = value;
                        showSnackbar();
                      }
                    });
                  },
                ),
                title: Text('Swift'),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text("Checkbox"),
          ListTile(
            leading: Checkbox(
              value: agree,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    agree = value;
                  }
                });
              },
            ),
            title: Text("Agree / Disagree"),
          )
        ],
      ),
    );

    @override
    Void dispose() {
      _controller.dispose();
      super.dispose();
    }
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
