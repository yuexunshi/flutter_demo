import 'package:demo_getx/modules/state/test/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends GetView<TestController> {
  TestController controller = Get.put(TestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestPage')),
      body: Container(
          child: Obx(() => Column(
                children: controller.imageFiles.map((e) => Text(e)).toList(),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
