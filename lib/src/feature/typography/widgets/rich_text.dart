import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(),
        children: [
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.only(bottom: 2),
              child: const Text('First ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),
          ),
          const WidgetSpan(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.red,
            ),
          ),
          const WidgetSpan(
            child: Text(' second ',
                style: TextStyle(fontSize: 30, color: Colors.grey)),
          ),
          WidgetSpan(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber[600],
            ),
          ),
          const WidgetSpan(
              child: Text(' Third ',
                  style: TextStyle(fontSize: 30, color: Colors.grey)))
        ],
      ),
    );
  }
}
