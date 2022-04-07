// constraints_logger.dart
import 'package:flutter/material.dart';

class ConstraintsLogger extends StatelessWidget {
  final String comment;
  final Widget child;
  ConstraintsLogger({
    this.comment = "",
    required this.child,
  }) : assert(comment != null);
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print('$comment: $constraints to${child.runtimeType}');
        return child;
      },
    );
  }
}
