import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'inject_simple_controllere.dart';

class InjectSimplePage extends GetView<InjectSimpleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyPage')),
      body: Container(
        child: GetX<InjectSimpleController>(builder: (_) {
          return Text(_.obj.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getAge();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
