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

## Usage

You want this: ![What you want] <!-- TODO: finish this after the example is done. -->


```dart
const like = 'sample';
```

## How it works

It first renders a flex with the `mainChild` as its only children offstage. It then measure the cross axis size of that flex, and make a new flex with `childrensBefore`, `mainChild` and `childresAfter` in a `SizedBox` with the cross axis size set to the measured value.

## Additional information

Note that SizedBox sometimes will be forced to fit parent (e.g. when the parent is the screen). When this happen, place the FlexWithMainChild into a Center or some other intermediate containers. 
