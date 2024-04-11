import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ThirdView extends HookWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Column(
      children: [
        AppTextField(
          controller: controller,
          labelText: 'NIN Number',
        ),
        YBox(20.dy),
        AppText(
          text: 'Upload a clear picture of your NIN card',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: appColors.green,
        ),
      ],
    );
  }
}
