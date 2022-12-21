import 'package:dio_error_example/screens/first_screen/first_screen.dart';
import 'package:dio_error_example/screens/main_page.dart';
import 'package:dio_error_example/screens/second_screen/second_screen.dart';
import 'package:dio_error_example/screens/web/web_page.dart';
import 'package:flutter/material.dart';

abstract class RouteName {
  static const main = 'main';
  static const web = 'web';
  static const first = 'firs';
  static const second = 'second';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.main:
        return MaterialPageRoute(builder: (_) => MainPage());
        case RouteName.web:
        return MaterialPageRoute(builder: (_) => WebPage());
      case RouteName.first:
        return MaterialPageRoute(builder: (_) => FirstPage());
      case RouteName.second:
        return MaterialPageRoute(builder: (_) => SecondPage());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
