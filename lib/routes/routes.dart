import 'package:flutter/material.dart';
import '../pages/main_page.dart';
import '../pages/second_page.dart';

import '../pages/first_page.dart';

class RouteManager {
  static const String homePage = "/";
  static const String firstPage = "/firstPage";
  static const String secondPage = "/secondPage";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: prefer_typing_uninitialized_variables
    // Map ? valuePassed = settings.arguments as Map<String, dynamic>;

    var valuePassed = {};

    if (settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const Mainpage());
      case firstPage:
        return MaterialPageRoute(builder: (context) => const Firstpage());
      case secondPage:
        return MaterialPageRoute(
            builder: (context) => Secondpage(
                  name: valuePassed['name'],
                ));
      default:
        throw const FormatException("Routes not found");
    }
  }
}
