import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class CalculatorField extends StatelessWidget {
  final value;

  // Constructor
  CalculatorField({this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          child: Text(
            value.toString(),
            style: TextStyle(
              fontSize: 54.0,
              color: Colors.grey[500]
            ),
          ),
          alignment: Alignment(0.9, 0.9)
        ),
      );
  }
}
