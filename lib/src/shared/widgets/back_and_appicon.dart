import 'package:farm_fresh/src/features/onboarding/screen/widgets/app_icon_and_text.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:farm_fresh/src/shared/widgets/app_back_button.dart';
import 'package:flutter/material.dart';

class BackAndAppIcon extends StatelessWidget {
  const BackAndAppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        AppBackButton(),
        Spacer(flex: 2),
        AppIconAndText(
          width: 100,
        ),
        Spacer(flex: 3),
      ],
    );
  }
}

class BackAndAppTitle extends StatelessWidget {
  final String text;
  const BackAndAppTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppBackButton(),
        const Spacer(flex: 2),
        SizedBox(
          width: 100,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Spacer(flex: 3),
      ],
    );
  }
}
