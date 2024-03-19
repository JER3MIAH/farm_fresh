import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconAndText extends StatelessWidget {
  final double? width;
  const AppIconAndText({
    super.key,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return AppColumn(
      width: width ?? Dims.deviceSize.width,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(appIcon),
        YBox(5.dy),
        Text(
          'FarmFresh',
          style: TextStyle(
            color: theme.primary,
            fontSize: 21.2.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
