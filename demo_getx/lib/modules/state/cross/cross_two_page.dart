import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cross_one_controller.dart';
import 'cross_two_controller.dart';
import 'cross_two_second_controller.dart';

class CrossTwoPage extends StatelessWidget {
  final CrossTwoSecondController controller = Get.put(CrossTwoSecondController());
  @override
  Widget build(BuildContext context) {
    Get.put(CrossTwoController());
    return Scaffold(
      appBar: AppBar(title: Text('CrossTwoPage')),
      body: Container(
          child: Column(
        children: [
          CheetahButton('打印CrossTwoController', () {
            print(Get.find<CrossTwoController>());
          }),
          CheetahButton('CrossTwoSecondController', () {
            print(Get.find<CrossTwoSecondController>());
          }),
          CheetahButton('打印CrossOneController的age', () {
            print(Get.find<CrossOneController>().age);
          }),
        ],
      )),
    );
  }
}
