import 'package:farm_fresh/src/features/auth/presentation/widgets/widgets.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterSentCode extends HookWidget {
  const EnterSentCode({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final otpController = useTextEditingController();

    return AppColumn(
      children: [
        YBox(45.dy),
        PinCodeTextField(
          length: 4,
          controller: otpController,
          animationType: AnimationType.fade,
          onCompleted: (result) {
            //* logic
            // print(result);
          },
          appContext: context,
          keyboardType: TextInputType.number,
          autoDisposeControllers: true,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(12),
            selectedColor: theme.colorScheme.primary,
            inactiveColor: theme.colorScheme.secondary.withOpacity(0.1),
            activeColor: appColors.green,
            fieldHeight: 54.04,
            fieldWidth: 54.04,
          ),
        ),
        YBox(25.dy),
        LinedUpText(
          leadingText: 'Didn\'t recieve code? ',
          trailingText: 'Resend',
          onTapTrailing: () {},
        ),
      ],
    );
  }
}
