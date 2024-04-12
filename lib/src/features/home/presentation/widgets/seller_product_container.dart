import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SellerProductContainer extends StatelessWidget {
  final String productName;
  const SellerProductContainer({
    super.key,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(bottom: 15.dy),
      height: 231.dy,
      width: 142.dx,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: appColors.green,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            height: 152.dy,
          ),
          Text(
            productName,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'N1000 /  Bundle',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 28.dy,
            width: 68.dx,
            decoration: BoxDecoration(
              color: appColors.success.withOpacity(.03),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'In stock',
                style: TextStyle(
                  color: appColors.success,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
