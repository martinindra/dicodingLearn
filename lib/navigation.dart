import 'package:flutter/material.dart';

class NavigationMainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstNaivgationScreen();
  }
}

class FirstNaivgationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Pindah Kedua"),
      ),
    );
  }
}

class SecondNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlineButton(
        onPressed: () {},
        child: Text("Kembali"),
      ),
    );
  }
}
