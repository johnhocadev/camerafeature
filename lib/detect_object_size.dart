import 'package:flutter/material.dart';


class MyRectPainter extends CustomPainter {
  MyRectPainter({required this.rect});
  final Rect rect;

  @override
  void paint(Canvas canvas, Size size) {
    if (rect != null) {
      canvas.drawRect(
          rect,
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2
            ..color = Colors.green);
    } else {
      canvas.drawRect(Rect.fromPoints(Offset(0, 0), Offset(0, 0)), Paint());
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
