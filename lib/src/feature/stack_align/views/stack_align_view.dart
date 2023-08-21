import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/stack_align/widgets/setting_bottom_appbar.dart';

import '../widgets/main_screen_stack_align.dart';

class StackAlignView extends StatelessWidget {
  const StackAlignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack & Align'),
      ),
      bottomNavigationBar: const BottomAppBar(child: SettingBottomAppbar()),
      body: const MainStackAlign(),
    );
  }
}
