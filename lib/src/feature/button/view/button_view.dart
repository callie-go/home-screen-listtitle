import 'package:flutter/material.dart';

import '../widgets/main_screen_button.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button View'),
      ),
      body: const MainScreenButton(),
    );
  }
}
