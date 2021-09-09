import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  // 分割线高度
  final double thickness;

  // 分割线颜色
  final Color color;
  final double leftIndent;
  final double rightIndent;
  final EdgeInsets? marginInsets;

  final Widget? label;
  final Alignment labelAlignment;
  final EdgeInsets? labelMarginInsets;

  const HorizontalDivider({
    this.thickness = 1,
    this.color = Colors.black,
    this.leftIndent = 0,
    this.rightIndent = 0,
    this.marginInsets,
    this.label,
    this.labelAlignment = Alignment.center,
    this.labelMarginInsets,
  });

  @override
  Widget build(BuildContext context) {
    final Widget lineWidget = Container(
      height: thickness < 0 ? 1.0 : thickness,
      color: color,
    );

    Widget? dividerWidgetWrapper;

    if (label != null) {
      final Widget labelWidgetWrapper = labelMarginInsets == null
          ? label!
          : Container(margin: labelMarginInsets, child: label);

      if (labelAlignment == Alignment.center) {
        dividerWidgetWrapper = Row(children: [
          Expanded(child: lineWidget),
          labelWidgetWrapper,
          Expanded(child: lineWidget),
        ]);
      } else if (labelAlignment == Alignment.centerLeft) {
        dividerWidgetWrapper = Row(children: [
          labelWidgetWrapper,
          Expanded(child: lineWidget),
        ]);
      } else if (labelAlignment == Alignment.centerRight) {
        dividerWidgetWrapper = Row(children: [
          Expanded(child: lineWidget),
          labelWidgetWrapper,
        ]);
      } else if (labelAlignment == Alignment.topCenter) {
        dividerWidgetWrapper = Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            labelWidgetWrapper,
            lineWidget,
          ],
        );
      } else if (labelAlignment == Alignment.topLeft) {
        dividerWidgetWrapper = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            labelWidgetWrapper,
            lineWidget,
          ],
        );
      } else if (labelAlignment == Alignment.topRight) {
        dividerWidgetWrapper = Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            labelWidgetWrapper,
            lineWidget,
          ],
        );
      } else if (labelAlignment == Alignment.bottomCenter) {
        dividerWidgetWrapper = Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            lineWidget,
            labelWidgetWrapper,
          ],
        );
      } else if (labelAlignment == Alignment.bottomLeft) {
        dividerWidgetWrapper = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            lineWidget,
            labelWidgetWrapper,
          ],
        );
      } else if (labelAlignment == Alignment.bottomRight) {
        dividerWidgetWrapper = Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            lineWidget,
            labelWidgetWrapper,
          ],
        );
      }
    }
    debugPrint('HorizontalDivider:build:$dividerWidgetWrapper ');
    return Container(
      alignment: Alignment.centerLeft,
      margin: marginInsets ?? EdgeInsets.zero,
      padding: EdgeInsets.only(left: leftIndent, right: rightIndent),
      child: dividerWidgetWrapper ?? lineWidget,
    );
  }
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
