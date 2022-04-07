import 'package:flutter/material.dart';

void main() {
  runApp(const AppAsset());
}

class AppAsset extends StatelessWidget {
  const AppAsset({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppAsset"),
        ),
        body: FittedBox(
          child: Image.asset("assets/images/image.jpg"),
          fit: BoxFit.fill
        ),
      ),
    );
    throw UnimplementedError();
  }
}
