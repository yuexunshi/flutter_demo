import 'package:demo_getx/modules/state/cross/cross_one_page.dart';
import 'package:demo_getx/modules/state/other/reactive_page.dart';
import 'package:demo_getx/modules/state/simple/simple_page.dart';
import 'package:demo_getx/modules/state/simpleadvanced/simple_advanced_page.dart';
import 'package:demo_getx/modules/state/test/test_pagr.dart';
import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'all_page.dart';

class StatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('状态管理')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheetahButton('简单', () => Get.to(SimplePage())),
            CheetahButton('局部更新', () => Get.to(SimpleAdvancedPage())),
            CheetahButton('响应式更新', () => Get.to(ReactivePage())),
            CheetahButton('大乱斗', () => Get.to(AllPage())),
            CheetahButton('跨组件', () => Get.to(CrossOnePage())),
            CheetahButton('List', () => Get.to(TestPage())),
          ],
        ),
      ),
    );
  }
}
