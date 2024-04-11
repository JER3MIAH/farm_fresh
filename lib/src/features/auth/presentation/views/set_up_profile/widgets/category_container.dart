import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  const CategoryContainer({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 37.dy,
        width: 97.dx,
        margin: EdgeInsets.symmetric(horizontal: 10.dx, vertical: 20.dx),
        decoration: BoxDecoration(
          color: isSelected ? appColors.green : null,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: appColors.grey.withOpacity(.25),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: isSelected ? appColors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}
