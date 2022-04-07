// App0610.dart -- BAD CODE
import 'package:flutter/material.dart';

import 'App06Main.dart';
import 'constraints_logger.dart';

Widget buildColumn(BuildContext context) {
  return Row(
    children: [
      _buildRowOfThree(),
    ],
  );
}

Widget _buildRowOfThree() {
  return Expanded(
    child: ConstraintsLogger(
      comment: 'In _buildRowOfThree',
      child: Row(
        children: <Widget>[
          _buildExpandedBox("Cat"),
          _buildExpandedBox("Dog"),
          _buildExpandedBox("Ape"),
        ],
      ),
    ),
  );
}

Widget _buildExpandedBox(
  String label, {
  double height = 88.0,
}) {
  return Expanded(
    child: buildRoundedBox(
      label,
      height: height,
    ),
  );
}
