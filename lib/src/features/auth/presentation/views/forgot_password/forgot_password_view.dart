import 'package:farm_fresh/src/features/auth/presentation/views/forgot_password/enter_email.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/forgot_password/enter_sent_code.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/forgot_password/set_new_password.dart';
import 'package:farm_fresh/src/features/auth/presentation/widgets/widgets.dart';
import 'package:farm_fresh/src/features/onboarding/screen/widgets/app_icon_and_text.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum CurrentForgotPasswordView { first, second, last }

class ForgotPasswordView extends HookWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final pageController = usePageController();
    final isSecondPage = useState<bool>(false);
    final isLastPage = useState<bool>(false);
    void moveToNextPage() {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }

    return Scaffold(
      body: AppColumn(
        height: Dims.deviceSize.height,
        margin: EdgeInsets.symmetric(horizontal: 15.dx)
            .copyWith(top: 55.dy, bottom: 25.dy),
        children: [
          const AppIconAndText(),
          YBox(15.dy),
          StartAlignedText(
            text: 'Forgot your password?',
            style: textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 19.sp,
              height: 2,
            ),
          ),
          StartAlignedText(
            text: isLastPage.value
                ? 'Now set your new password and enjoy'
                : isSecondPage.value
                    ? 'A code has been sent to your email address to\nhelp you gain access back to your account. Enter\nthe code'
                    : 'Enter the email address you signed up with and\nwe will send you a code to help you reset your\npassword',
            style: textTheme.displaySmall,
          ),
          YBox(15.dy),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (value) {
                isSecondPage.value = (value == 1);
                isLastPage.value = (value == 2);
              },
              children: const [
                EnterEmail(),
                EnterSentCode(),
                SetNEwPassword(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: AppColumn(
        margin: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(bottom: 25.dy),
        children: [
          isLastPage.value
              ? AppButton(
                  title: 'Proceed',
                  onTap: () {
                    //* ----
                  },
                )
              : isSecondPage.value
                  ? AppButton(
                      title: 'Proceed',
                      onTap: () {
                        //* check condition, then...
                        moveToNextPage();
                      },
                    )
                  : AppButton(
                      title: 'Proceed',
                      onTap: () {
                        //* check condition, then...
                        moveToNextPage();
                      },
                    ),
        ],
      ),
    );
  }
}
