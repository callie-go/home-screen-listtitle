import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Colors.white),
            child: const Text('Text Button'),
          ),
        ),
        SizedBox(
          child: TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
                backgroundColor: Colors.white),
            label: const Text('Text Button Icon'),
            icon: const Icon(Icons.account_circle_rounded),
          ),
        )
      ],
    );
  }
}
