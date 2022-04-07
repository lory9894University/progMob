// App0609.dart
import 'package:flutter/material.dart';

import 'App06Main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      SizedBox(height: 20.0),
      _buildRowOfThree(),
    ],
  );
}

Widget _buildRowOfThree() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      buildRoundedBox(
        "Giraffe",
        height: 150.0,
      ),
      SizedBox(width: 10.0),
      buildRoundedBox(
        "Wombat",
        height: 36.0,
      ),
      SizedBox(width: 10.0),
      _buildExpandedBox(
        "Store Manager",
        height: 36.0,
      ),
    ],
  );
}

Widget _buildExpandedBox(String label, {double height = 88.0}) {
  return Expanded(
    child: buildRoundedBox(
      label,
      height: height,
    ),
  );
}
