import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/home/view/home_screen.dart';
import 'package:home_screen_listtile/src/feature/row_column/views/row_column_screen.dart';
import 'package:home_screen_listtile/src/router/route_names.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterNames.home:
        return MaterialPageRoute(
          builder: (context) {
            return const HomeScreen();
          },
        );
      case RouterNames.rowAndColumn:
        return MaterialPageRoute(
          builder: (context) {
            return const RowColumnPage();
          },
        );
      default:
        return _errRoute();
    }
  }

  static Route<dynamic> _errRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text('No route')),
          body: const Center(
            child: Text(
              'Something went wrong when trying to load the page',
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
