<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A Flex (i.e. Column or Row) that sizes itself to its main child in the cross axis direction.

## Features

This package contains three classes:
 - `FlexWithMainChild`
 - `ColumnWithMainChild`
 - `RowWithMainChild`

## Getting started

Add `flex_with_main_child: <version>` under `dependencies` in your `pubspec.yaml`.

## Usage

The 3 classes' usage are exactly identical to their counter part in flutter/widgets.dart, except they have a mainChild which will define their cross axis size.

```dart
ColumnWithMainChild(
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
```

The above code will give:<br/>![example](https://raw.githubusercontent.com/chomosuke/flex_with_main_child/master/example.png)

## How it works

It first renders a flex with the `mainChild` as its only children offstage. It then measure the cross axis size of that flex, and make a new flex with `childrensBefore`, `mainChild` and `childresAfter` in a `SizedBox` with the cross axis size set to the measured value.

## Additional information

Note that SizedBox sometimes will be forced to fit parent (e.g. when the parent is the screen). When this happen, place the FlexWithMainChild into a Center or some other intermediate containers. 

## Contribution & bug report

All pull requests / issues are welcome.
