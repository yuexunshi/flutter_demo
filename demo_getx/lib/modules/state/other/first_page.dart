import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'countController.dart';
import 'userController.dart';

class FirstPage extends StatelessWidget {
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
              builder: (s) => Text(
                'GetBuilder更新值: ${s.count}',
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GetX<UserController>(
              init: UserController(),
              builder: (_) => Text('GetX更新值: ${_.user.value.name}'),
            ),
            Obx(
              () => Text('Obx更新值: ${Get.find<UserController>().user.value.count}'),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Update Name &  Count"),
              onPressed: () {
                Get.find<UserController>().updateUser(Get.find<CountController>().count);
              },
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.find<CountController>().increment();
          }),
    );
  }
}
