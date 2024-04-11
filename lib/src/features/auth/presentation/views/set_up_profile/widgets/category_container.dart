import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  const CategoryContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.dx),
      height: 37.dy,
      width: 97.dx,
      padding: EdgeInsets.all(5.dx),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
