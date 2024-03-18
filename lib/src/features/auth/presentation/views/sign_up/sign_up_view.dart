import 'package:farm_fresh/src/features/auth/presentation/view_models/sign_up_viewmodel.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/features/onboarding/screen/widgets/app_icon_and_text.dart';
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
    final emailController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
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
          margin: EdgeInsets.symmetric(horizontal: 15.dx),
          shouldScroll: true,
          children: [
            YBox(55.dy),
            const AppIconAndText(),
            YBox(20.dy),
            StartAlignedText(
              text: 'Hello there',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            StartAlignedText(
              text: 'Enter your information below to get started',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 16.sp,
                    height: 2,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            YBox(20.dy),
            AppTextField(
              controller: fullNameController,
              labelText: 'First name',
              hintText: 'Enter your first name',
              keyBoardType: TextInputType.name,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(25.dy),
            AppTextField(
              controller: emailController,
              labelText: 'Email address',
              hintText: 'Enter email address',
              keyBoardType: TextInputType.emailAddress,
              validator: (value) {
                return Validator.emailValidator(value);
              },
            ),
            YBox(25.dy),
            AppTextField(
              controller: phoneNumberController,
              labelText: 'Phone number',
              hintText: 'Enter your phone number',
              keyBoardType: TextInputType.phone,
              validator: (value) {
                return Validator.nonEmptyField(value);
              },
            ),
            YBox(25.dy),
            AppTextField(
              controller: passwordController,
              labelText: 'Password',
              hintText: 'Enter password',
              keyBoardType: TextInputType.visiblePassword,
              isPasswordField: true,
              validator: (value) {
                return Validator.password(value);
              },
            ),
            YBox(20.dy),
            AppButton(
              title: 'Submit',
              isLoading: signupViewmodel.isLoading,
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  //TODO:
                }
              },
              buttonColor: signupViewmodel.buttonEnabled
                  ? theme.primary
                  : theme.secondary.withOpacity(0.1),
              // : theme.secondary.withOpacity(0.1),
            ),
            YBox(10.dy),
            LinedUpText(
              leadingText: 'Already have an account? ',
              trailingText: 'Log in',
              onTapTrailing: () {
                signupViewmodel.disposeValues();
                AppNavigator.replaceNamed(AuthRoutes.login);
              },
            ),
            YBox(25.dy),
          ],
        ),
      ),
    );
  }
}
