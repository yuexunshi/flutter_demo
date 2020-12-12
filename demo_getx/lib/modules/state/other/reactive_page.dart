import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sumController.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<SumController>(SumController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SumController>(
              builder: (_) {
                print("count1 rebuild");
                return Text(
                  'Counter #1:    ${_.count1}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Text("                        +"),
            GetX<SumController>(
              builder: (_) {
                print("count2 rebuild");
                return Text(
                  'Counter #2:    ${_.count2}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Text("                        ="),
            Obx(() => Text(
                  'Sum:                 ${Get.find<SumController>().sum}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text("Increment Counter #1"),
              onPressed: () {
                Get.find<SumController>().increment();
              },
            ),
            RaisedButton(
              child: Text("Increment Counter #2"),
              onPressed: () {
                Get.find<SumController>().increment2();
              },
            ),
          ],
        ),
      ),
    );
  }
}
