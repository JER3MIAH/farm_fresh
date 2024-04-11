import 'package:farm_fresh/src/features/auth/presentation/views/set_up_profile/first_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/set_up_profile/fourth_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/set_up_profile/third_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/set_up_profile/second_view.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SetUpProfileView extends HookWidget {
  const SetUpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final isFirst = useState<bool>(false);
    final isLast = useState<bool>(false);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackAndAppIcon(),
            YBox(33.dy),
            Text(
              'Set up your profile',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            YBox(10.dy),
            Text(
              isLast.value
                  ? 'Add  payment information'
                  : isFirst.value
                      ? 'Choose the category that best describes your products.'
                      : 'Verify your identity',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: appColors.grey.withOpacity(.5),
              ),
            ),
            YBox(40.dy),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  isFirst.value = (value == 0);
                  isLast.value = (value == 3);
                },
                children: const [
                  CategoryView(),
                  PickVerifView(),
                  ThirdView(),
                  FourthView(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dy, vertical: 30.dy),
        child: AppButton(
          title: 'Next',
          onTap: () {
            if (isLast.value) {
              AppNavigator.pushNamed(HomeRoutes.sellerHome);
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
              );
            }
          },
        ),
      ),
    );
  }
}
