import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  final color;
  final String text;
  final bool big;
  final void Function(String) callBack;
  Button({
    @required this.text,
    this.color = DEFAULT,
    this.big = false,
    @required this.callBack,
  });
  Button.big({
    @required this.text,
    this.color = DEFAULT,
    this.big = true,
    @required this.callBack,
  });
  Button.operation({
    @required this.text,
    this.color = OPERATION,
    this.big = false,
    @required this.callBack,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => callBack(text),
      ),
    );
  }
}
