import 'package:auto_dispose/auto/auto_dispose.dart';
import 'package:auto_dispose/auto/auto_dispose_mixin.dart';
import 'package:auto_dispose/data/data_model.dart';
import 'package:flutter/material.dart';

class AutoPage extends StatefulWidget {
  AutoPage({Key key}) : super(key: key);

  @override
  _AutoPageState createState() {
    return _AutoPageState();
  }
}

class _AutoPageState extends State<AutoPage> with AutoDisposeMixin {
  int _num = 0;
  int _value = 0;

  @override
  void initState() {
    super.initState();
    _addDataListener();
    _addValueListener();
  }

  _addDataListener() {
    autoDispose(DataModel().stream.listen((event) {
      print("==AutoPage._addDataListener: event==$event");
      if (mounted) {
        setState(() {
          _num = event;
        });
      }
    }));
  }

  _addValueListener() {
    addAutoDisposeListener(DataModel().valueNotifier, () {
      var value = DataModel().valueNotifier.value;
      print("==AutoPage._addValueListener: event==$value");
      if (mounted) {
        setState(() {
          _value = value;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AutoPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('接收到stream的数据是：$_num'),
            Text('接收到ValueNotifier的数据是：$_value')
          ],
        ),
      ),
    );
  }
}
