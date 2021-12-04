import './flex_with_main_child.dart';
import 'package:flutter/widgets.dart';

/// A widget that's identical to `Row` in `flutter/widgets.dart` except it
/// tries to match the its height with its `mainChild`.
class RowWithMainChild extends FlexWithMainChild {
  /// Identical constructor to `Row` in `flutter/widgets.dart`.
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
