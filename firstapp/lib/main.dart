import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(const App0301());

class App0301 extends StatelessWidget {
  const App0301({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("appBar"),
        elevation: 30,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Hello world!",
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
              Text("other text")
            ]),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("ciao, sono un cassetto"),
        ),
      ),
    ));
  }
}
