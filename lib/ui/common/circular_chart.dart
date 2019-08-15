import 'package:weatherapps/ui/common/circular_chart_painter.dart';
import 'package:flutter/material.dart';

class CircularChart extends StatelessWidget {
  CircularChart({this.title, this.child, this.percentage, this.maxValue});
  final Widget child;
  final String title;
  final double percentage;
  final double maxValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 18)),
          SizedBox.fromSize(size: Size(0, 10),),
          Container(
            width: 95,
            height: 95,
            child: CustomPaint(
              child: child ?? Center(
                child: Text(
                  percentage.toStringAsFixed(0) + "%", 
                  style: TextStyle(fontSize: 20)),),
              painter: CircularCharPainter(percentage, size: 95, maxValue: maxValue),
            )
          ),
        ]
      )
    );
  }
}