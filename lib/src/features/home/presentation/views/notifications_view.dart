import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        children: [
          const BackAndAppTitle(text: 'Notifications'),
          YBox(33.dy),
          Row(
            children: [
              IconFiller(
                icon: SvgPicture.asset(check),
                fillColor: appColors.success.withOpacity(.04),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
