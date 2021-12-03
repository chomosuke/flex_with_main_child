import 'package:flex_with_main_child/flex_with_main_child.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        // without Center, ColumnWithMainChild would have to be the same size of
        // the screen, making it useless.

        child: ColumnWithMainChild(
          // ColumnWithMainChild have the same parameters as Column
          mainAxisAlignment: MainAxisAlignment.center,
          // except children, obviously.
          childrenAbove: [
            // Because the underlying implementation uses Flex, any child that work
            // in Column will work exactly the same way in ColumnWithMainChild.
            Spacer(flex: 5),
            Text('very very very very long description'),
            Spacer(),
          ],
          mainChild: Text('short Title'),
          childrenBelow: [
            Spacer(),
            Text('another very very very very very long text'),
            Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
