import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class IconFiller extends StatelessWidget {
  final Color fillColor;
  final Widget icon;
  const IconFiller({
    super.key,
    required this.fillColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.dy,
      width: 35.dy,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fillColor,
      ),
      child: Center(child: icon),
    );
  }
}
