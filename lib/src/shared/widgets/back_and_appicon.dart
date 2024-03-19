import 'package:farm_fresh/src/features/onboarding/screen/widgets/app_icon_and_text.dart';
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
