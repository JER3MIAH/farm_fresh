import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final defStyle = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    );

    return Container(
      height: 39.dy,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 7.dx),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appColors.grey.withOpacity(.1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('#11122', style: defStyle),
          Text(
            'Processing',
            style: defStyle.copyWith(
              fontSize: 12.sp,
              color: appColors.orange,
            ),
          ),
          Text('N1000', style: defStyle),
        ],
      ),
    );
  }
}
