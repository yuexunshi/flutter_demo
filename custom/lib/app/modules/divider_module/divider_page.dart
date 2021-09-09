import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:custom/app/modules/divider_module/divider_controller.dart';

import 'horizontal_divider.dart';

class DividerPage extends GetView<DividerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Divider Page')),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ), //
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 1.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HorizontalDivider(), // ju
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 5.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 48.0),
                  ),

                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.centerLeft,
                  ),

                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.centerRight,
                  ),
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.topCenter,
                  ),
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.topRight,
                  ),
                  //==============
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.bottomLeft,
                  ),
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.bottomCenter,
                  ),
                  SizedBox(
                    height: 20,
                  ), // ,st

                  HorizontalDivider(
                    color: Colors.redAccent,
                    thickness: 2.0,
                    leftIndent: 12.0,
                    marginInsets: EdgeInsets.only(right: 12.0),
                    label: Icon(
                      Icons.audiotrack_outlined,
                      size: 30,
                    ),
                    labelAlignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
