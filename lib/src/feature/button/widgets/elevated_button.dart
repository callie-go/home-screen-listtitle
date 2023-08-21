import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              padding: const EdgeInsets.all(10),
            ),
            child: const Text('Elevated Button'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              padding: const EdgeInsets.all(10),
            ),
            label: const Text('Elevated Button Icon'),
            icon: const Icon(Icons.account_circle_rounded),
          ),
        ),
      ],
    );
  }
}
