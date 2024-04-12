import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReportContainer extends StatelessWidget {
  final bool isIncrease;
  final String amount, title;
  final Widget icon;
  const ReportContainer({
    super.key,
    this.isIncrease = true,
    required this.title,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107.dy,
      width: 151.dx,
      padding: EdgeInsets.all(10.dx),
      decoration: BoxDecoration(
        border: Border.all(
          color: appColors.grey.withOpacity(.1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              icon,
              const Spacer(),
              SvgPicture.asset(isIncrease ? increase : decrease),
              XBox(5.dx),
              Text(
                '0.5%',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: isIncrease ? appColors.success : appColors.error,
                ),
              ),
              XBox(10.dx),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 4.dx),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: appColors.grey.withOpacity(.5),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
