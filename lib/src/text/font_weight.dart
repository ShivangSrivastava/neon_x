import 'package:flutter/material.dart';
import 'package:neon_x/neon_x.dart';

extension NxFontWeight on VxTextBuilder {
  VxTextBuilder get w1 => fontWeight(FontWeight.w100);
  VxTextBuilder get w2 => fontWeight(FontWeight.w200);
  VxTextBuilder get w3 => fontWeight(FontWeight.w300);
  VxTextBuilder get w4 => fontWeight(FontWeight.w400);
  VxTextBuilder get w5 => fontWeight(FontWeight.w500);
  VxTextBuilder get w6 => fontWeight(FontWeight.w600);
  VxTextBuilder get w7 => fontWeight(FontWeight.w700);
  VxTextBuilder get w8 => fontWeight(FontWeight.w800);
  VxTextBuilder get w9 => fontWeight(FontWeight.w900);
}
