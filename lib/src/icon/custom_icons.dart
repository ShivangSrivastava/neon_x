import 'package:flutter/material.dart';
import 'package:neon_x/neon_x.dart';

class NxIcon extends StatelessWidget {
  final String icon;
  final double? size;
  final Color? color;
  final double? scaleValue;
  const NxIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.scaleValue,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: size,
      colorFilter:
          (color == null) ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    ).scale(scaleValue: (scaleValue == null) ? 1 : scaleValue);
  }
}
