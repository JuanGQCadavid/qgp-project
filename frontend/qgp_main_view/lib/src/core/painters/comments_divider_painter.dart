import 'dart:ui';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint()..strokeWidth = 1.5;
    pointerDivider(canvas, size, brush);
    //canvas.drawLine(Offset(0, 0), Offset(0, size.height), brush);
  }

  void linearDivider(Canvas canvas, Size size, Paint brush) {
    double interval = size.height / 6;

    canvas.drawLine(Offset(0, 0), Offset(0, interval), brush);

    canvas.drawLine(Offset(0, interval * 2), Offset(0, interval * 3), brush);

    canvas.drawLine(Offset(0, interval * 4), Offset(0, interval * 5), brush);
  }

  void pointerDivider(Canvas canvas, Size size, Paint brush) {
    double interval = size.height / 6;
    canvas.drawPoints(
        PointMode.points,
        [Offset(0, 0), Offset(0, interval * 2), Offset(0, interval * 4)],
        brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
