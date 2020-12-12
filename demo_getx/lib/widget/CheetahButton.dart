import 'package:flutter/material.dart';

class CheetahButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  const CheetahButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(12)),
      child: FlatButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
