import 'package:farm_fresh/src/features/statistics/presentation/widgets/recent_order_container.dart';
import 'package:farm_fresh/src/features/statistics/presentation/widgets/report_container.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SellerStatisticsView extends StatelessWidget {
  const SellerStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    final defStyle = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      body: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 20.dx).copyWith(top: 55.dy),
        shouldScroll: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sales report',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 39.dy,
                width: 111.dx,
                decoration: BoxDecoration(
                  color: appColors.success.withOpacity(.02),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This month',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: appColors.success,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: appColors.success,
                      size: 17.dx,
                    ),
                  ],
                ),
              ),
            ],
          ),
          YBox(20.dy),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReportContainer(
                title: 'Total orders',
                amount: '1023',
                icon: IconFiller(
                  fillColor: appColors.orange.withOpacity(.04),
                  icon: SvgPicture.asset(totalOrders),
                ),
              ),
              ReportContainer(
                title: 'Saled',
                amount: '1000',
                icon: IconFiller(
                  fillColor: appColors.success.withOpacity(.04),
                  icon: SvgPicture.asset(
                    newOrder,
                    colorFilter:
                        ColorFilter.mode(appColors.success, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          ),
          YBox(20.dy),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReportContainer(
                title: 'Customers',
                amount: '2023',
                icon: IconFiller(
                  fillColor: appColors.darkyellow.withOpacity(.04),
                  icon: SvgPicture.asset(customer),
                ),
              ),
              ReportContainer(
                title: 'Earnings',
                amount: 'N100,000',
                icon: IconFiller(
                  fillColor: appColors.blue.withOpacity(.04),
                  icon: SvgPicture.asset(earning),
                ),
              ),
            ],
          ),
          YBox(20.dy),
          AppText(
            text: 'Recent orders',
            isStartAligned: true,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          YBox(10.dy),
          Container(
            height: 39.dy,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 7.dx),
            decoration: BoxDecoration(
              color: appColors.green.withOpacity(.02),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order no', style: defStyle),
                Text('Status   ', style: defStyle),
                Text('Price', style: defStyle),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                9,
                (index) => const RecentOrder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
