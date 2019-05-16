import 'package:first_app/widgets/CalculatorButtons.dart';
import 'package:first_app/widgets/CalculatorField.dart';
import "package:flutter/material.dart";
import 'package:expressions/expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String currentValue = "0";
  editCurrentValue (String value) {
    String newValue = "";
    if (value == "C") {
      newValue = currentValue == "0" ? currentValue : currentValue.substring(0, currentValue.length - 1);
    } else if (value == "CE") {
      newValue = "0";
    } else if (currentValue == "0") {
      newValue = value;
    } else if (value == "=") {
      Expression expression = Expression.parse(currentValue);
      final evaluator = const ExpressionEvaluator();
      var newCurrentValue = evaluator.eval(expression, {});
      newValue = newCurrentValue.toStringAsFixed(2);
    } else {
      newValue = currentValue + value;
    }
    setState(() {
      currentValue = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: CalculatorField(value: currentValue),
          flex: 3
        ),
        Expanded(
          child: CalculatorButtons(editCurrentValue),
          flex: 7
        ),
      ],
    );
  }
}
