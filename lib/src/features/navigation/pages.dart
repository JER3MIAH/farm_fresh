import 'package:farm_fresh/src/features/home/presentation/views/home_view.dart';
import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:farm_fresh/src/features/onboarding/screen/onboarding_screen.dart';
import 'package:farm_fresh/src/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav.dart';

class AppPages {
  static const initial = SplashRoute.splash;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: SplashRoute.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    ...authPages,
    ...homePages,
    ...orderPages,
    ...listPages,
    ...savedPages,
  ];
}

//*-------------------------------Auth Routes---------------------------------------------
List<GetPage> authPages = [
  GetPage(
    name: AuthRoutes.onboarding,
    page: () => const OnboardingScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];

//*-------------------------------Home Routes---------------------------------------------
List<GetPage> homePages = [
  GetPage(
    name: HomeRoutes.home,
    page: () => const HomeView(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];

//*-------------------------------Order Routes--------------------------------------------
List<GetPage> orderPages = [];

//*-------------------------------List Routes---------------------------------------------
List<GetPage> listPages = [];

//*-------------------------------Saved Routes--------------------------------------------
List<GetPage> savedPages = [];
