import 'package:farm_fresh/src/features/auth/presentation/view_models/sign_up_viewmodel.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/widgets.dart';

class SignUpView extends HookConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context).colorScheme;
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final fullNameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final signupViewmodel = ref.watch(signUpProvider);

    return Scaffold(
      body: Form(
        key: formKey,
        onChanged: () {
          signupViewmodel.onInputChanged(
            firstName: fullNameController.text.trim(),
            email: emailController.text.trim(),
            phoneNumber: phoneNumberController.text.trim(),
            password: passwordController.text.trim(),
          );
        },
        child: AppColumn(
          margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
          shouldScroll: true,
          children: [
            const BackAndAppIcon(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 11.dy),
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
            StartAlignedText(
              text: 'Sign Up',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            StartAlignedText(
              text: 'Provide your information below to get started',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: theme.secondary,
              ),
            ),
            YBox(20.dy),
            AppTextField(
              controller: fullNameController,
              hintText: 'Full name',
              keyBoardType: TextInputType.name,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(35.dy),
            AppTextField(
              controller: phoneNumberController,
              hintText: 'Phone number',
              keyBoardType: TextInputType.phone,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(35.dy),
            AppTextField(
              controller: emailController,
              hintText: 'Email address',
              keyBoardType: TextInputType.emailAddress,
              validator: (value) {
                return Validator.emailValidator(value);
              },
            ),
            YBox(35.dy),
            AppTextField(
              controller: passwordController,
              hintText: 'Password',
              keyBoardType: TextInputType.visiblePassword,
              isPasswordField: true,
              validator: (value) {
                return Validator.password(value);
              },
            ),
            YBox(45.dy),
            AppButton(
              title: 'Next',
              isLoading: signupViewmodel.isLoading,
              onTap: () async {
                // if (formKey.currentState!.validate()) {
                AppNavigator.pushNamed(AuthRoutes.otpVerification);
                // }
              },
              buttonColor: signupViewmodel.buttonEnabled
                  ? theme.primary
                  : theme.secondary,
            ),
            YBox(27.dy),
            LinedUpText(
              leadingText: 'Already have an account? ',
              trailingText: 'Log in',
              isUndelined: true,
              onTapTrailing: () {
                signupViewmodel.disposeValues();
                AppNavigator.replaceNamed(AuthRoutes.login);
              },
            ),
            YBox(35.dy),
          ],
        ),
      ),
    );
  }
}
