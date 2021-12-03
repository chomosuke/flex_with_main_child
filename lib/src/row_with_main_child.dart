import './flex_with_main_child.dart';
import 'package:flutter/widgets.dart';

class RowWithMainChild extends FlexWithMainChild {
  const RowWithMainChild({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    required Widget mainChild,
    List<Widget> childrenLeft = const <Widget>[],
    List<Widget> childrenRight = const <Widget>[],
  }) : super(
          key: key,
          direction: Axis.horizontal,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          childrenBefore: childrenLeft,
          childrenAfter: childrenRight,
          mainChild: mainChild,
        );
}
