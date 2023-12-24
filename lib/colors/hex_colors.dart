import 'package:flutter/material.dart';

Color hexToColor(String hexValue) {
  hexValue = hexValue.replaceAll("#", "");
  int intValue = int.parse(hexValue, radix: 16);
  return Color(intValue | 0xFF000000);
}
