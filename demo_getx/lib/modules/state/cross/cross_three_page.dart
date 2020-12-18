import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cross_one_controller.dart';
import 'cross_three_controller.dart';

class CrossThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<CrossThreeController>(() => CrossThreeController());
    return Scaffold(
        appBar: AppBar(title: Text('CrossThreePage')),
        body: Container(
            child: Column(
          children: [
            CheetahButton('打印CrossThreeController', () {
              print(Get.find<CrossThreeController>());
            }),
            CheetahButton('打印CrossOneController的age', () {
              print(Get.find<CrossOneController>().age);
            }),
          ],
        )));
  }
}
