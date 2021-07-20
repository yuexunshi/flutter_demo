//@dart=2.12
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class GetDisposeView<T extends GetxController> extends StatefulWidget {
  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  @protected
  Widget build(BuildContext context);

  @protected
  void setController();

  @override
  _AutoDisposeState createState() => _AutoDisposeState<T>();
}

class _AutoDisposeState<S extends GetxController>
    extends State<GetDisposeView> {
  _AutoDisposeState();

  @override
  Widget build(BuildContext context) {
    return widget.build(context);
  }

  @override
  void initState() {
    super.initState();
    widget.setController();
  }

  @override
  void dispose() {
    Get.delete<S>();
    super.dispose();
  }
}
