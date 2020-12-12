import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavSimplePage extends StatelessWidget {
  final String title = Get.parameters['title'];
  final String name = Get.parameters['name'];

  final String argName = Get.arguments;
  @override
  Widget build(BuildContext context) {
    print(Get.parameters);
    return Scaffold(
      appBar: AppBar(title: Text(title ?? 'SimplePage')),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text(
                name ?? argName ?? 'Navigation Test',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 16),
              SizedBox(height: 16),
              CheetahButton(
                '携带返回值返回',
                () => Get.back(result: '新垣结衣'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
