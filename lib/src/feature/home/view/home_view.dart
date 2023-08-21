import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/home/widgets/home_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Gallery Widget')),
      body: const HomePage(),
    );
  }
}
