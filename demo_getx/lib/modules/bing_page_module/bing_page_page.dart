import 'package:demo_getx/widget/base/get_binding_view.dart';
import 'package:demo_getx/widget/base/get_dispose_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bing_page_bindings.dart';
import 'bing_page_controller.dart';

class AutoDisposePage extends GetDisposeView<BingPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Auto Dispose Page')),
      body: Container(
        child: Obx(()=>Container(child: Text(controller.obj),)),
      ),
    );
  }

  @override
  void setController() {
    Get.put(BingPageController());
  }
}
