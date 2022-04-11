import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doris Dating app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Are you compatible with Doris?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _compatible = true;
  String _compatibleText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildFirstRow(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "You are$_compatibleText compatible with\nDoris D. Developer"),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFirstRow() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Are you 18 or older?"),
          Switch(
            value: _compatible,
            onChanged: _changeCompatible,
          )
        ],
      ),
    );
  }

  void _changeCompatible(bool newValue) {
    setState(() {
      _compatible = newValue;
      _compatibleText = newValue ? "" : " NOT";
    });
  }
}
