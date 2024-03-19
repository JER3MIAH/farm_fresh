import 'package:farm_fresh/src/features/auth/presentation/views/login/login_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/otp_verification/otp_verification_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/register/register_view.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/sign_up/sign_up_view.dart';
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
  GetPage(
    name: AuthRoutes.register,
    page: () => const RegisterView(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.login,
    page: () => const LoginView(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.signUp,
    page: () => const SignUpView(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
   GetPage(
    name: AuthRoutes.otpVerification,
    page: () => const OtpVerificationView(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.forgotPassword,
    page: () => const ForgotPasswordView(),
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
