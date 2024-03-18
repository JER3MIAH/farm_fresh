import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav.dart';

class AppPages {
  static const initial = AuthRoutes.onboarding;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // GetPage(
    //   name: AuthRoutes.onboarding,
    //   page: () => const OnboardingView(),
    //   transition: Transition.native,
    //   transitionDuration: const Duration(milliseconds: 700),
    // ),
  ];
}
