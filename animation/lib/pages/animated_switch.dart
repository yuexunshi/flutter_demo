import 'package:animation/widget/CustomSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitchPage extends StatefulWidget {
  const AnimatedSwitchPage({Key key}) : super(key: key);

  @override
  _AnimatedSwitchPageState createState() => _AnimatedSwitchPageState();
}

class _AnimatedSwitchPageState extends State<AnimatedSwitchPage> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("显示demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomSwitch(onChanged: (value){
              debugPrint('value=$value');

            },),
            CupertinoSwitch(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
