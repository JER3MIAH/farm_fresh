import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddDeliveryAddressView extends HookWidget {
  const AddDeliveryAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    final addressController = useTextEditingController();

    return Scaffold(
      body: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackAndAppIcon(),
          YBox(33.dy),
          Text(
            'Add delivery address',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          YBox(33.dy),
          AppTextField(
            controller: addressController,
            hintText: 'Type in address',
            prefixWidget: Padding(
              padding: EdgeInsets.only(right: 8.dx),
              child: SvgPicture.asset(searchIcon),
            ),
          ),
          YBox(28.dy),
          Row(
            children: [
              SvgPicture.asset(locationIcon),
              XBox(10.dx),
              Text(
                'Use current location',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dy, vertical: 30.dy),
        child: AppButton(
          title: 'Continue',
          onTap: () {
            AppNavigator.pushNamed(AuthRoutes.confirmAddress);
          },
        ),
      ),
    );
  }
}
