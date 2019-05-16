import "package:flutter/material.dart";

class ButtonsRow extends StatelessWidget {
  final List<String> buttonsName;
  final Function(String) editCurrentValue;
  ButtonsRow(this.buttonsName, this.editCurrentValue);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: buttonsName.map((buttonName) {
        return Expanded(
          child: RawMaterialButton(
            child: Text(
              buttonName,
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.grey[600]
              ),
            ),
            fillColor: Colors.white,
            onPressed: () => editCurrentValue(buttonName.toString()),
            shape: ContinuousRectangleBorder(
              side: BorderSide(
                color: Colors.grey[100]
              )
            )
          ),
          flex: 1
        );
      }).toList(),
    );
  }
}
