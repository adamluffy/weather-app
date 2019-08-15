import 'dart:math';

import 'package:flutter/material.dart';

class CircularCharPainter extends CustomPainter {
  CircularCharPainter(this.percentage, {this.size, this.maxValue = 100});
  final double percentage;
  final double size;
  double maxValue;

  @override
  void paint(Canvas canvas, Size size) {
    if(maxValue == null) maxValue = 100;

    double arcAngle = 2*pi* (percentage / maxValue) ;
    arcAngle = (arcAngle <= 0 || arcAngle > 100) ? 100 : arcAngle;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: this.size/2), 
        -pi/2, 
        arcAngle, 
        false, 
        Paint()
          ..color = Colors.cyan[100] 
          ..strokeWidth = 5
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke);

    arcAngle = 2*pi * ((maxValue - percentage).abs() / maxValue);

    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width/2, size.height/2), radius: this.size/2), 
        -pi/2, 
        -arcAngle, 
        false, 
        Paint()
          ..color = Color.fromARGB(255, 0, 138, 191)
          ..strokeWidth = 5
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}