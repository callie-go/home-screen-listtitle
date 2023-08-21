import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 50,
      ),
      child: Text(
        'Create a text widget. If the [style] arguments is null,'
        ' the text will use the style from the ...',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.pink, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
