import './flex_with_main_child.dart';
import 'package:flutter/widgets.dart';

/// A widget that's identical to `Row` in `flutter/widgets.dart` except it
/// tries to match the its height with its `mainChild`.
/// `mainChild` must have a GlobalKey attached for size measuring.
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
    required GlobalKey mainChildKey,
    required List<Widget> children,
  }) : super(
          key: key,
          direction: Axis.horizontal,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
          children: children,
          mainChildKey: mainChildKey,
        );
}
