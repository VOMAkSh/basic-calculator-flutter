import 'package:first_app/widgets/ButtonsRow.dart';
import "package:flutter/material.dart";

class CalculatorButtons extends StatelessWidget {
  final Function(String) editCurrentValue;
  CalculatorButtons (this.editCurrentValue); 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          child: Column(
          children: <Widget>[
            Expanded(
              child: ButtonsRow(["9", "8", "7", "/"], editCurrentValue),
              flex: 1
            ),
            Expanded(
              child: ButtonsRow(["6", "5", "4", "*"], editCurrentValue),
              flex: 1
            ),
            Expanded(
              child: ButtonsRow(["3", "2", "1", "+"], editCurrentValue),
              flex: 1
            ),
            Expanded(
              child: ButtonsRow(["CE", "0", "C", "="], editCurrentValue),
              flex: 1
            )
          ],
        )
      ),
    );
  }
}
