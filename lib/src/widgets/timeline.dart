// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:neon_x/neon_x.dart';

class NxTimeLine extends StatelessWidget {
  final int currentPosition;
  final int size;
  final Color filledColor;
  final Color lineColor;
  final void Function(int index)? onTap;
  const NxTimeLine({
    Key? key,
    required this.currentPosition,
    required this.size,
    required this.filledColor,
    required this.lineColor,
    this.onTap,
  }) : super(key: key);

  Widget unfilledCircle() {
    return VxBox()
        .square(20)
        .roundedFull
        .border(color: lineColor.withOpacity(0.4))
        .make();
  }

  Widget filledCircle() {
    return [
      VxBox()
          .square(20)
          .roundedFull
          .border(color: filledColor, width: 1.5)
          .make(),
      VxBox().square(10).roundedFull.color(filledColor).make(),
    ].zStack(alignment: const Alignment(0, 0));
  }

  Widget line(BuildContext context, {bool filled = false}) {
    return VxBox()
        .height(1.5)
        .color((filled) ? filledColor : lineColor.withOpacity(0.4))
        .make()
        .wOneThird(context);
  }

  @override
  Widget build(BuildContext context) {
    return List.generate(
      size,
      (index) {
        if (index == 0) {
          return filledCircle().onTap(() {
            onTap!(index);
          });
        }
        if (index <= currentPosition) {
          return [
            line(context, filled: true),
            filledCircle().onTap(() {
              onTap!(index);
            })
          ].hStack();
        } else {
          return [
            line(context),
            unfilledCircle().onTap(() {
              onTap!(index);
            })
          ].hStack();
        }
      },
    ).hStack().scrollHorizontal();
  }
}
