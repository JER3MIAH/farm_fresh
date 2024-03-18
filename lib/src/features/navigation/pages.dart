import 'package:farm_fresh/src/features/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav.dart';

class AppPages {
  static const initial = AuthRoutes.onboarding;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    ...authPages,
    ...homePages,
    ...orderPages,
    ...listPages,
    ...savedPages,
  ];
}

//*-------------------------------Auth Routes---------------------------------------------
List<GetPage> authPages = [];

//*-------------------------------Home Routes---------------------------------------------
List<GetPage> homePages = [];

//*-------------------------------Order Routes--------------------------------------------
List<GetPage> orderPages = [];

//*-------------------------------List Routes---------------------------------------------
List<GetPage> listPages = [];

//*-------------------------------Saved Routes--------------------------------------------
List<GetPage> savedPages = [];
