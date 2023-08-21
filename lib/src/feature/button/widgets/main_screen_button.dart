import 'package:flutter/material.dart';

import 'cupertino_button.dart';
import 'dropdown_button.dart';
import 'elevated_button.dart';
import 'material_button.dart';
import 'outline_button.dart';
import 'text_button.dart';

class MainScreenButton extends StatelessWidget {
  const MainScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const DropdownButtonWidget(),
          IconButton(
            onPressed: () {},
            iconSize: 50,
            icon: const Icon(Icons.add_box_rounded),
          ),
          const ElevatedButtonWidget(),
          const TextButtonWidget(),
          const OutlineButtonWidget(),
          const CupertinoButtonWidget(),
          const MaterialButtonWidget(),
        ],
      ),
    );
  }
}
