import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch({
    Key key,
    this.width = 120,
    this.height = 50,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.buttonColor = Colors.white,
    this.onChanged,
    this.value = false,
  }) : super(key: key);

  final double width;
  final double height;

  /// 打开时的颜色
  final Color activeColor;

  /// 关闭时的颜色
  final Color inactiveColor;

  ///  按钮颜色
  final Color buttonColor;
  final ValueChanged<bool> onChanged;

  final bool value;

  @override
  _CustomSwitchState createState() {
    return _CustomSwitchState();
  }
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  bool _value;
  double _paddingValue;

  double _diameter;

  Animation<Alignment> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
    _paddingValue = widget.height / 12;
    _diameter = widget.height - 2 * _paddingValue;
    // 初始化动画控制器，设置动画时间
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    // 设置动画取值范围和时间曲线
    _animation = Tween<Alignment>(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (animation, child) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: _value ? widget.activeColor : widget.inactiveColor,
            borderRadius: BorderRadius.circular(widget.height / 2),
          ),
          padding: EdgeInsets.all(_paddingValue),
          child: Align(
            alignment: _animation.value,
            child: GestureDetector(
              onTap: () {
                if (_animationController.isCompleted) {
                  _animationController.reverse();
                } else {
                  _animationController.forward();
                }
                _value = !_value;
                widget.onChanged?.call(_value);
              },
              child: Container(
                width: _diameter,
                height: _diameter,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.buttonColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
