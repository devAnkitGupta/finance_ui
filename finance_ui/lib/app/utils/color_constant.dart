import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray900Cc = fromHex('#cc141b14');

  static Color red800 = fromHex('#d81728');

  static Color teal507f = fromHex('#7fd4f3e4');

  static Color gray9008e = fromHex('#8e141b14');

  static Color whiteA70051 = fromHex('#51ffffff');

  static Color lightBlue900 = fromHex('#02549a');

  static Color black90021 = fromHex('#21000000');

  static Color teal300 = fromHex('#41d28d');

  static Color greenA700 = fromHex('#11c770');

  static Color black900 = fromHex('#000000');

  static Color gray900E5 = fromHex('#e5141b14');

  static Color redA400 = fromHex('#fa2d43');

  static Color blue900 = fromHex('#003399');

  static Color indigo50 = fromHex('#e7e7f0');

  static Color gray900 = fromHex('#141b14');

  static Color gray90001 = fromHex('#223323');

  static Color teal50 = fromHex('#d0fae6');

  static Color gray300 = fromHex('#dfdfdf');

  static Color black9004f = fromHex('#4f000000');

  static Color gray30001 = fromHex('#e6e6e6');

  static Color green2007f = fromHex('#7f8aeb9f');

  static Color redA40001 = fromHex('#f3182c');

  static Color redA4002d = fromHex('#2dfa2c42');

  static Color cyan50 = fromHex('#e5fff4');

  static Color indigo900 = fromHex('#07014f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
