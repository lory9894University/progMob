import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(App0501());

class App0501 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() =>
      _MyHomePageState();
}
class _MyHomePageState extends State {
  String _pressedOrNot = "You haven't pressed the button.";

  void _changeText() {
    setState(_getNewText);
  }
  void _getNewText() {
    _pressedOrNot = "You've pressed the button.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(
            _pressedOrNot,
          ),
        ),
        floatingActionButton:
        FloatingActionButton(
          onPressed: _changeText,
        ));
  }
}