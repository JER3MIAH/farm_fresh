import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            SvgPicture.asset(appIcon),
            YBox(15.dy),
            StartAlignedText(
              text: 'Welcome back',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(height: 2),
            ),
            StartAlignedText(
              text: 'Enter your information below to get into\nthe app',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: theme.secondary.withOpacity(0.6),
                  ),
            ),
            YBox(15.dy),
            AppTextField(
              controller: emailController,
              labelText: 'Email address',
              hintText: 'Enter email address',
              keyBoardType: TextInputType.emailAddress,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(25.dy),
            AppTextField(
              controller: passwordController,
              labelText: 'Password',
              hintText: 'Enter password',
              isPasswordField: true,
              keyBoardType: TextInputType.visiblePassword,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(15.dy),
            GestureDetector(
              onTap: () {
                AppNavigator.pushNamed(AuthRoutes.forgotPassword);
              },
              child: StartAlignedText(
                text: 'Forgot password?',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: theme.primary,
                    ),
              ),
            ),
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
            leadingText: 'New to this space? ',
            trailingText: 'Sign up',
            onTapTrailing: () {
              emailController.clear();
              passwordController.clear();
              AppNavigator.replaceNamed(AuthRoutes.register);
            },
          ),
        ],
      ),
    );
  }
}
