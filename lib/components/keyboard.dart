import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  final void Function(String) callback;
  KeyBoard(this.callback);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button.big(text: 'AC', color: Button.DARK, callBack: callback),
              Button(text: '%', color: Button.DARK, callBack: callback),
              Button.operation(text: '/', callBack: callback),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: '7', callBack: callback),
              Button(text: '8', callBack: callback),
              Button(text: '9', callBack: callback),
              Button.operation(text: 'x', callBack: callback),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: '4', callBack: callback),
              Button(text: '5', callBack: callback),
              Button(text: '6', callBack: callback),
              Button.operation(text: '-', callBack: callback),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button(text: '1', callBack: callback),
              Button(text: '2', callBack: callback),
              Button(text: '3', callBack: callback),
              Button.operation(text: '+', callBack: callback),
            ],
          ),
          SizedBox(height: 1),
          ButtonRow(
            buttons: [
              Button.big(text: '0', callBack: callback),
              Button(text: '.', callBack: callback),
              Button.operation(text: '=', callBack: callback),
            ],
          )
        ],
      ),
    );
  }
}
