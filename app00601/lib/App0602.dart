// App0602.dart
import 'package:flutter/material.dart';

import 'App06Main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      SizedBox(height: 20.0),
      buildRoundedBox(
        "Sale Today",
        height: 150.0,
      ),
    ],
  );
}
