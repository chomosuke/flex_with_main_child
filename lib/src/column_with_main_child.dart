import './flex_with_main_child.dart';
import 'package:flutter/widgets.dart';

class ColumnWithMainChild extends FlexWithMainChild {
  const ColumnWithMainChild({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Clip clipBehavior = Clip.none,
    required Widget mainChild,
    List<Widget> childrenAbove = const <Widget>[],
    List<Widget> childrenBelow = const <Widget>[],
  }) : super(
          key: key,
          direction: Axis.vertical,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          clipBehavior: clipBehavior,
          childrenBefore: childrenAbove,
          childrenAfter: childrenBelow,
          mainChild: mainChild,
        );
}
