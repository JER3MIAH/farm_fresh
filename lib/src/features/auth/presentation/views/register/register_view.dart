import 'package:farm_fresh/src/features/auth/data/models/user.dart';
import 'package:farm_fresh/src/features/auth/presentation/view_models/register_viewmodel.dart';
import 'package:farm_fresh/src/features/auth/presentation/view_models/sign_up_viewmodel.dart';
import 'package:farm_fresh/src/features/auth/presentation/widgets/widgets.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/features/onboarding/screen/widgets/app_icon_and_text.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterView extends HookConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context).colorScheme;
    final registerViewModel = ref.watch(registerProvider);
    final signUpViewmodel = ref.watch(signUpProvider);

    void selectOptionBar() {
      AppSnackBar.showTips(
        'Select an option',
      );
    }

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 55, left: 20, right: 20, bottom: 40),
        child: Column(
          children: [
            const AppIconAndText(),
            YBox(140.dy),
            Text(
              'I am here to',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 140.dy).copyWith(top: 50),
              child: Column(
                children: [
                  _buildTile(
                    context: context,
                    theme: theme,
                    isCustomer: true,
                    viewModel: registerViewModel,
                    signUpViewModel: signUpViewmodel,
                  ),
                  YBox(20.dy),
                  _buildTile(
                    context: context,
                    theme: theme,
                    isCustomer: false,
                    viewModel: registerViewModel,
                    signUpViewModel: signUpViewmodel,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                AppButton(
                  title: 'Get started',
                  onTap: () {
                    if (signUpViewmodel.userType == UserType.buyer) {
                      AppNavigator.pushNamed(AuthRoutes.signUp);
                    } else if (signUpViewmodel.userType == UserType.seller) {
                      AppNavigator.pushNamed(AuthRoutes.signUp);
                    } else {
                      selectOptionBar();
                    }
                  },
                  buttonColor: registerViewModel.selectedOption != null
                      ? theme.primary
                      : theme.secondary.withOpacity(0.1),
                ),
                YBox(30.dy),
                LinedUpText(
                  leadingText: 'Already have an account? ',
                  trailingText: 'Log in',
                  onTapTrailing: () {
                    if (signUpViewmodel.userType == UserType.buyer) {
                      AppNavigator.pushNamed(AuthRoutes.login);
                    } else if (signUpViewmodel.userType == UserType.seller) {
                      AppNavigator.pushNamed(AuthRoutes.login);
                    } else {
                      selectOptionBar();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile({
    required BuildContext context,
    required ColorScheme theme,
    required bool isCustomer,
    required RegisterViewModel viewModel,
    required SingupViewModel signUpViewModel,
  }) {
    final isSelected = viewModel.selectedOption == (isCustomer ? 1 : 2);

    return Container(
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected
            ? theme.primary.withOpacity(0.06)
            : theme.secondary.withOpacity(0.06),
        border: isSelected ? Border.all(color: theme.primary) : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            Image.asset(
              isCustomer ? seller : buyer,
              height: 45,
              width: 45,
              filterQuality: FilterQuality.high,
            ),
            XBox(10.dx),
            Expanded(
              child: Text(
                  isCustomer ? 'To buy farm produce' : 'To sell farm produce',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            Radio<int>(
              value: isCustomer ? 1 : 2,
              activeColor: theme.primary,
              groupValue: viewModel.selectedOption,
              onChanged: (int? value) {
                viewModel.updateSelectedOption(value!);
                signUpViewModel.setUserType(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
