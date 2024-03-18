import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/features/onboarding/screen/widgets/app_icon_and_text.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'views/first_view.dart';
import 'views/second_view.dart';

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final pageController = usePageController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
            child: Column(
              children: [
                const AppIconAndText(),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: const [
                      FirstView(),
                      SecondView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 617.dy,
            child: Center(
              child: SmoothPageIndicator(
                effect: WormEffect(
                  activeDotColor: theme.primary,
                  dotColor: theme.primary.withOpacity(0.1),
                  dotHeight: 7.2.dy,
                  dotWidth: 7.2.dx,
                ),
                controller: pageController,
                count: 2,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: AppColumn(
        padding: EdgeInsets.symmetric(horizontal: 15.dx, vertical: 20.dy)
            .copyWith(bottom: 30.dy),
        children: [
          AppButton(
            title: 'Get started',
            onTap: () {
              AppNavigator.pushNamed(AuthRoutes.register);
            },
          ),
        ],
      ),
    );
  }
}
