import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/container_decoration/widgets/main_screen_container_decoration.dart';
import '../widgets/setting_bottom_appbar.dart';

class ContainerDecorationView extends StatelessWidget {
  const ContainerDecorationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container & Decoration')),
      bottomNavigationBar: const BottomAppBar(child: SettingBottomAppbar()),
      body: const MainScreenContainerDecoration(),
    );
  }
}
