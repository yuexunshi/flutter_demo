import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page_controller.dart';

class LoginPagePage extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage Page')),
      body: Container(
        child: Obx(()=>Container(child: Text(controller.obj),)),
      ),
    );
  }
}
