import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/feature/typography/widgets/basic_rich_text.dart';
import 'package:home_screen_listtile/src/feature/typography/widgets/google_text.dart';
import 'package:home_screen_listtile/src/feature/typography/widgets/rich_text.dart';
import 'package:home_screen_listtile/src/feature/typography/widgets/text.dart';

class RichTextPageView extends StatelessWidget {
  const RichTextPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text View'),
      ),
      body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextWidget(),
            RichTextWidget(),
            BasicRichTextWidget(),
            GoogleTextWidget(),
          ]),
    );
  }
}
