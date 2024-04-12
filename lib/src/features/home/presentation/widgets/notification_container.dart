import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationContainer extends StatelessWidget {
  final String title, body, time;
  final Widget? icon;
  const NotificationContainer({
    super.key,
    required this.title,
    required this.body,
    required this.time,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.dy),
      child: Row(
        children: [
          icon ??
              IconFiller(
                icon: SvgPicture.asset(check),
                fillColor: appColors.success.withOpacity(.04),
              ),
          XBox(8.dx),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                body,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: appColors.grey.withOpacity(.5),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
