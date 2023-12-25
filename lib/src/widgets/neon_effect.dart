import 'package:flutter/material.dart';

extension NeonEffectOnText on Text {
  Text neon(Color backgroundColor) => Text(
        data!,
        style: TextStyle(
          fontSize: 32,
          backgroundColor: backgroundColor,
        ),
      );
}
