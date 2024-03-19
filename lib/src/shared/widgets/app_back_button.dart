import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppInkWell(
      onTap: () {
        AppNavigator.popRoute();
      },
      child: Icon(
        Icons.keyboard_arrow_left,
        size: 21.dx,
      ),
    );
  }
}
