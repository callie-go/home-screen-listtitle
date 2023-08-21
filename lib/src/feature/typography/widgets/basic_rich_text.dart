import 'package:flutter/material.dart';

class BasicRichTextWidget extends StatelessWidget {
  const BasicRichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
              text: 'One',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          TextSpan(
              text: 'Two',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline)),
          TextSpan(
              text: 'Three',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          TextSpan(
              text: 'Four',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
          TextSpan(
              text: 'Five',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red))
        ],
      ),
    );
  }
}
