import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/home/view/home_screen.dart';
import 'package:home_screen_listtile/src/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: HomeScreen(),
    );
  }
}
