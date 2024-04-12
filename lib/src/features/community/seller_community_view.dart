import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SellerCommunityView extends StatelessWidget {
  const SellerCommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        child: Column(
          children: [
            const BackAndAppTitle(text: 'Community'),
            YBox(93.dy),
            Container(
              height: 199.dy,
              width: double.infinity,
              decoration: BoxDecoration(
                color: appColors.grey.withOpacity(.5),
              ),
            ),
            YBox(10.dy),
            SizedBox(
              width: Dims.dxPercent(.7),
              child: Text(
                'Make connections with other farmers, exchange ideas, and keep up with the newest developments in sustainable farming.',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            YBox(100.dy),
            AppButton(
              title: 'Join community',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
