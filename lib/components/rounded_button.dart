import 'package:flutter/material.dart';

typedef void FunctionCallback();

class RoundedButton extends StatelessWidget {
  final String text;
  final FunctionCallback callback;

  RoundedButton({this.text, this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: RaisedButton(
          onPressed: () => callback(),
          color: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 22),
          )),
    );
  }
}