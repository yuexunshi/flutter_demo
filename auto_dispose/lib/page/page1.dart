import 'package:auto_dispose/data/data_model.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() {
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  int _num = 0;
  int _value = 0;

  @override
  void initState() {
    super.initState();
    _addDataListener();
    _addValueListener();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _addDataListener() {
    DataModel().stream.listen((event) {
      print("==_Page1State._addDataListener: event==$event");
      if (mounted) {
        setState(() {
          _num = event;
        });
      }
    });
  }

  _addValueListener() {
    DataModel().valueNotifier.addListener(() {
      var value = DataModel().valueNotifier.value;
      print("==_Page1State._addDataListener: event==$value");
      if (mounted) {
        setState(() {
          _value = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PAge1'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('接收到stream的数据是：$_num'),
              Text('接收到ValueNotifier的数据是：$_value')
            ],
          ),
        ));
  }
}
