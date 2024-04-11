import 'package:farm_fresh/src/features/auth/data/models/user.dart';
import 'package:farm_fresh/src/features/auth/presentation/view_models/sign_up_viewmodel.dart';
import 'package:farm_fresh/src/features/auth/presentation/widgets/widgets.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationView extends HookConsumerWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context).colorScheme;
    // final otp2Controller = useTextEditingController();
    final userType = ref.watch(signUpProvider).userType;

    return Scaffold(
      body: AppColumn(
        padding: EdgeInsets.symmetric(horizontal: 15.dy).copyWith(top: 55.dy),
        children: [
          const BackAndAppIcon(),
          YBox(22.dy),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  YBox(8.dy),
                  Text(
                    'We are sending an OTP Code to verify your\nphone number',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  YBox(8.dy),
                  Text(
                    'Edit  +234 441235944',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          YBox(22.dy),
          Text(
            'Please enter your code here',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: theme.secondary,
            ),
          ),
          YBox(20.dy),
          SizedBox(
            width: Dims.deviceSize.width * .64,
            child: PinCodeTextField(
              length: 4,
              // controller: otp2Controller,
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
                selectedColor: theme.primary,
                inactiveColor: theme.secondary.withOpacity(0.1),
                activeColor: appColors.green,
                fieldHeight: 47.04,
                fieldWidth: 47.04,
              ),
            ),
          ),
          YBox(25.dy),
          LinedUpText(
            leadingText: 'Didn\'t recieve code? ',
            trailingText: 'Resend',
            isUndelined: true,
            onTapTrailing: () {},
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 15.dy).copyWith(bottom: 30.dy),
        child: AppButton(
          title: 'Next',
          onTap: () {
            if (userType == UserType.buyer) {
              AppNavigator.pushNamed(AuthRoutes.addDeliveryAddress);
            } else {
              AppNavigator.pushNamed(AuthRoutes.setUpPRofile);
            }
          },
        ),
      ),
    );
  }
}
