import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SetUpProfileView extends StatelessWidget {
  const SetUpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackAndAppIcon(),
          YBox(33.dy),
          Text(
            'Set up your profile',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          YBox(10.dy),
          Text(
            'Choose the category that best describes your products.',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: appColors.grey.withOpacity(.5),
            ),
          ),
          YBox(40.dy),
          
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dy, vertical: 30.dy),
        child: AppButton(
          title: 'Next',
          onTap: () {},
        ),
      ),
    );
  }
}
