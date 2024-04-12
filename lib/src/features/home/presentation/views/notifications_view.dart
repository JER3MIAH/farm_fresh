import 'package:farm_fresh/src/features/home/presentation/widgets/widgets.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          const NotificationContainer(
            title: 'Order delivered',
            body: 'Order #12011 has been delivered',
            time: '3m',
          ),
          NotificationContainer(
            title: 'New order',
            body: 'You have a new order,order #12011',
            time: '3m',
            icon: IconFiller(
              icon: SvgPicture.asset(newOrder),
              fillColor: appColors.orange.withOpacity(.04),
            ),
          ),
          NotificationContainer(
            title: 'New order',
            body: 'You have a new order,order #12011',
            time: '3m',
            icon: IconFiller(
              icon: SvgPicture.asset(newOrder),
              fillColor: appColors.orange.withOpacity(.04),
            ),
          ),
          NotificationContainer(
            title: 'Low stock',
            body: 'Some product are low in quantity',
            time: '3m',
            icon: IconFiller(
              icon: SvgPicture.asset(flash),
              fillColor: appColors.error.withOpacity(.04),
            ),
          ),
        ],
      ),
    );
  }
}
