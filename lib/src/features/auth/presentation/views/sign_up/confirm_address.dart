import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class ConfirmAddressView extends StatelessWidget {
  const ConfirmAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        children: [
          const BackAndAppIcon(),
          Text(
            'Confirm your address',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
