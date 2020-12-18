import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cross_one_controller.dart';
import 'cross_three_controller.dart';
import 'cross_two_controller.dart';
import 'cross_two_page.dart';
import 'cross_two_second_controller.dart';

class CrossOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CrossOneController controller = Get.put(CrossOneController());

    return Scaffold(
      appBar: AppBar(title: Text('跨组件')),
      body: Container(
          child: Column(
        children: [
          CheetahButton('更改controller的age', () {
            controller.age++;
            print(controller.age);
          }),
          CheetahButton('去第二个页面', () {
            Get.to(CrossTwoPage());
          }),
          CheetahButton('去第三个个页面', () {
            Get.to(CrossTwoPage());
          }),
          CheetahButton('打印CrossTwoController', () {
            print(Get.find<CrossTwoController>());
          }),
          CheetahButton('CrossTwoSecondController', () {
            print(Get.find<CrossTwoSecondController>());
          }),
          CheetahButton('打印CrossThreeController', () {
            print(Get.find<CrossThreeController>());
          }),
        ],
      )),
    );
  }
}
