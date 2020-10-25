import 'dart:math';

import 'package:auto_dispose/data/data_model.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() {
    return _Page2State();
  }
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _sendStreamData() {
    var nextInt = Random().nextInt(100);
    DataModel().sink.add(nextInt);
  }

  _sendValueData() {
    var nextInt = Random().nextInt(100);
    DataModel().valueNotifier.value = nextInt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Column(children: <Widget>[
        FlatButton(onPressed: _sendStreamData, child: Text('发送stream数据')),
        FlatButton(
            onPressed: _sendValueData, child: Text('发送ValueNotifier数据')),
      ]),
    );
  }
}
