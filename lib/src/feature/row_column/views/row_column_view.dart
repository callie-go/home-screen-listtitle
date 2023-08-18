import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/row_column/widgets/setting_bottom_appbar.dart';

import '../widgets/main_screen-row_column.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row & Column')),
      bottomNavigationBar: const BottomAppBar(child: SettingBottomAppBar()),
      body: Container(color: Colors.yellow, child: const MainRowColumn()),
    );
  }
}
