import 'package:e_commerce/utilities/routes.dart';
import 'package:e_commerce/views/pages/landing_page.dart';
import 'package:e_commerce/views/pages/auth_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const AuthPage(),
      );
    case AppRoutes.landingPageRoute:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
      );
    default:
      return CupertinoPageRoute(
        builder: (_) => const LandingPage(),
      );
  }
}
