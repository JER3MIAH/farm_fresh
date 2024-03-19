import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:farm_fresh/src/shared/widgets/app_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../widgets/widgets.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: Form(
        key: formKey,
        onChanged: () {
          // viewmodel.onInputChanged(
          //   email: emailController.text.trim(),
          //   password: passwordController.text.trim(),
          // );
        },
        child: AppColumn(
          margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
          children: [
            const BackAndAppIcon(),
            YBox(15.dy),
            StartAlignedText(
              text: 'Log in',
              style: TextStyle(
                height: 2,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            StartAlignedText(
              text: 'Provide your information below to get started',
              style: TextStyle(
                color: theme.secondary.withOpacity(0.6),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 21.dy),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppInkWell(
                    onTap: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: theme.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppTextField(
              controller: emailController,
              hintText: 'Email address',
              keyBoardType: TextInputType.emailAddress,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(45.dy),
            AppTextField(
              controller: passwordController,
              hintText: 'Password',
              isPasswordField: true,
              keyBoardType: TextInputType.visiblePassword,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(25.dy),
            LinedUpText(
              leadingText: 'Are you new here? ',
              trailingText: 'Register',
              isUndelined: true,
              onTapTrailing: () {
                AppNavigator.replaceNamed(AuthRoutes.register);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: AppColumn(
        height: 120.dy,
        padding: EdgeInsets.symmetric(horizontal: 15.dx),
        children: [
          AppButton(
            title: 'Log in',
            // isLoading: viewmodel.isLoading,
            onTap: () async {
              if (formKey.currentState!.validate()) {
                //TODO;
              }
            },
            buttonColor: theme.primary,
            // : theme.secondary.withOpacity(0.1),
          ),
          YBox(10.dy),
          LinedUpText(
            leadingText: 'Forgot password? ',
            trailingText: 'Reset',
            onTapTrailing: () {
              emailController.clear();
              passwordController.clear();
              AppNavigator.pushNamed(AuthRoutes.forgotPassword);
            },
          ),
        ],
      ),
    );
  }
}
