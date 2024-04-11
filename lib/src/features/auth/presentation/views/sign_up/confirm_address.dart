import 'package:farm_fresh/src/features/auth/data/models/user.dart';
import 'package:farm_fresh/src/features/auth/presentation/view_models/sign_up_viewmodel.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfirmAddressView extends HookConsumerWidget {
  const ConfirmAddressView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final addressController = useTextEditingController();
    final stateController = useTextEditingController();
    final cityController = useTextEditingController();

    final userType = ref.watch(signUpProvider).userType;

    return Scaffold(
      body: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackAndAppIcon(),
          YBox(33.dy),
          Text(
            'Confirm your address',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          YBox(30.dy),
          AppTextField(
            controller: addressController,
            labelText: 'Address',
          ),
          YBox(30.dy),
          AppTextField(
            controller: stateController,
            labelText: 'State',
          ),
          YBox(30.dy),
          AppTextField(
            controller: cityController,
            labelText: 'City',
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dy, vertical: 30.dy),
        child: AppButton(
          title: 'Continue',
          onTap: () {
            if (userType == UserType.buyer) {
              AppNavigator.pushNamed(HomeRoutes.buyerHome);
            } else {
              AppNavigator.pushNamed(HomeRoutes.sellerHome);
            }
          },
        ),
      ),
    );
  }
}
