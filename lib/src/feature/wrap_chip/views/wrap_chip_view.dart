import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/wrap_chip/widgets/main_screen_wrap_chip.dart';
import 'package:home_screen_listtile/src/feature/wrap_chip/widgets/setting_bottom-appbar.dart';

class WrapAndChipView extends StatelessWidget {
  const WrapAndChipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap & Chip')),
      bottomNavigationBar: const BottomAppBar(
        child: SettingBottomAppbar(),
      ),
      body: const MainScreenWrapChip(),
    );
  }
}
