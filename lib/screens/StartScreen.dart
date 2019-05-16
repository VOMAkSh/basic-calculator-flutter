import 'package:first_app/widgets/Calculator.dart';
import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: Center(child: Calculator()));
  }
}
