import 'package:flutter/cupertino.dart';

class SizeConstant {
  SizeConstant._();

  static const tinyPadding = 4.0;
  static const smallPadding = 8.0;
  static const mediumPadding = 16.0;
  static const largePadding = 32.0;
  static const extraLargePadding = 64.0;

  static const tinyVerticalSpacer = SizedBox(height: tinyPadding);
  static const smallVerticalSpacer = SizedBox(height: smallPadding);
  static const mediumVerticalSpacer = SizedBox(height: mediumPadding);
  static const largeVerticalSpacer = SizedBox(height: largePadding);
  static const extraLargeVerticalSpacer = SizedBox(height: extraLargePadding);

  static const tinyHorizontalSpacer = SizedBox(width: tinyPadding);
  static const smallHorizontalSpacer = SizedBox(width: smallPadding);
  static const mediumHorizontalSpacer = SizedBox(width: mediumPadding);
  static const largeHorizontalSpacer = SizedBox(width: largePadding);
  static const extraLargeHorizontalSpacer = SizedBox(width: extraLargePadding);
}
