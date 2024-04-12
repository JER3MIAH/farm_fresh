import 'package:farm_fresh/src/shared/shared.dart';
import 'package:farm_fresh/src/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class AddProductDescription extends HookWidget {
  const AddProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final descController = useTextEditingController();

    return Column(
      children: [
        AppTextField(
          controller: descController,
          hintText: 'Product description',
          multiLine: 7,
        ),
        YBox(10.dy),
        AppText(
          text: 'Add images',
          isStartAligned: true,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        YBox(30.dy),
        Container(
          height: 54.dy,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: appColors.grey.withOpacity(.4),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(addImage),
                XBox(10.dx),
                Text(
                  'Add image',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: appColors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
