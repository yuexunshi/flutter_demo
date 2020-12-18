import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sum_controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put<SumController>(SumController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(Get.width * .3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Counter #1:',
                ),
                GetX<SumController>(
                  builder: (_) {
                    print("count1 rebuild");
                    return Text(
                      '${_.count1}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    );
                  },
                ),
              ],
            ),
            Text("+"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Counter #2:',
                ),
                Obx(() => Text(
                      '${Get.find<SumController>().count2}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Text("="),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sum:',
                ),
                Obx(() => Text(
                      '${Get.find<SumController>().sum}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
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
