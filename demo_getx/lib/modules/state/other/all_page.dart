import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count_controller.dart';
import 'user_controller.dart';

class AllPage extends StatelessWidget {
  final CountController countController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              builder: (controller) => Text(
                'GetBuilder更新CountController的值: ${controller.count}',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GetX<UserController>(
              init: UserController(),
              builder: (_) => Text('GetX更新user的name值: ${_.user.value.name}'),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Text('Obx更新user的age值: ${Get.find<UserController>().user.value.age}'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Update UserController"),
              onPressed: () {
                Get.find<UserController>().updateUser(Get.find<CountController>().count);
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Update CountController"),
              onPressed: () {
                Get.find<CountController>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
