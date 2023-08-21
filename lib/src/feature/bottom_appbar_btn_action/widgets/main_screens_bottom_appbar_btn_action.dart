import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/widgets/radio_btn_widget.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/widgets/switchers_widget.dart';

class MainScreenBottomAppbarBtnAction extends StatelessWidget {
  const MainScreenBottomAppbarBtnAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        children: [
          SwitcherWidget(),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          RadioBtnWidget(),
        ],
      ),
    );
  }
}
