import 'dart:async';

import 'package:flutter/cupertino.dart';

class DataModel {
  static DataModel _instance;

  static DataModel get instance => _getInstance();

  factory DataModel() => _getInstance();

  DataModel._internal();

  static DataModel _getInstance() {
    if (_instance == null) {
      _instance = DataModel._internal();
    }
    return _instance;
  }

  // ignore: close_sinks
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream.asBroadcastStream();

  StreamSink<int> get sink => _controller.sink;

  ValueNotifier<int> _valueNotifier = ValueNotifier(0);

  ValueNotifier<int> get valueNotifier => _valueNotifier;
}
