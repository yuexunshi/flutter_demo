//@dart=2.12
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class GetBindingView<T extends GetxController>
    extends StatefulWidget {
  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  @protected
  Widget build(BuildContext context);

  @protected
  Bindings? binding();

  @override
  _AutoDisposeState createState() => _AutoDisposeState<T>();
}

class _AutoDisposeState<S extends GetxController>
    extends State<GetBindingView> {
  _AutoDisposeState();

  @override
  Widget build(BuildContext context) {
    return widget.build(context);
  }

  @override
  void initState() {
    super.initState();
    widget.binding()?.dependencies();
  }

  @override
  void dispose() {
    Get.delete<S>();
    super.dispose();
  }
}
