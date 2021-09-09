import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:custom/app/modules/home_module/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('自定义View')),
      body: Container(
        child: GridView.count(
          crossAxisCount: controller.list.length,
          crossAxisSpacing: 20,
          children: controller.list
              .map(
                (e) => InkWell(
                  onTap: () {
                    Get.toNamed(e.routeName);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Color.fromRGBO(Random().nextInt(256),
                        Random().nextInt(256), Random().nextInt(256), 1),
                    child: Text(e.name),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
