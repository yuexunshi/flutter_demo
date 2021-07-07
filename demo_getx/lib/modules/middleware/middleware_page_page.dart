import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'middleware_page_controller.dart';

class MiddlewarePagePage extends GetView<MiddlewarePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MiddlewarePage Page')),
      body: Container(
        child: Obx(()=>Container(child: Text(controller.obj),)),
      ),
    );
  }
}
