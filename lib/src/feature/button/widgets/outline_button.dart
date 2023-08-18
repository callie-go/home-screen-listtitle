import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              side: const BorderSide(color: Colors.grey), // Border color
            ),
            child: const Text('Outline Button'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              side: const BorderSide(color: Colors.grey), // Border color
            ),
            label: const Text('Outline Button Icon'),
            icon: const Icon(Icons.account_circle_rounded),
          ),
        )
      ],
    );
  }
}
