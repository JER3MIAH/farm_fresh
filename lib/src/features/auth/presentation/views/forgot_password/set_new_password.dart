import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SetNEwPassword extends HookWidget {
  const SetNEwPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();

    return AppColumn(
      children: [
        AppTextField(
          controller: passwordController,
          topLabelText: 'Password',
          hintText: 'Enter password',
          keyBoardType: TextInputType.visiblePassword,
          isPasswordField: true,
          validator: (value) {
            return Validator.nonEmptyField(value);
          },
        ),
        YBox(25.dy),
        AppTextField(
          controller: confirmPasswordController,
          topLabelText: 'Confirm password',
          hintText: 'Enter password',
          keyBoardType: TextInputType.visiblePassword,
          isPasswordField: true,
          validator: (value) {
            return Validator.nonEmptyField(value);
          },
        ),
      ],
    );
  }
}
