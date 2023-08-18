import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  List<String> dropdownItems = ['option 1', 'option 2', 'option 3'];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [buildDropdownButton(), buildDropdownFormField()],
    );
  }

  Widget buildDropdownButton() {
    return DropdownButton<String>(
      value: selectedValue,
      hint: const DropdownMenuItem<String>(
        value: '',
        child: Text('Dropdown'), // Hint text
      ),
      items: dropdownItems.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
    );
  }

  Widget buildDropdownFormField() {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      hint: const Text('Dropdown Form Field'), // Hint text
      items: dropdownItems.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: const Text('Dropdown Form Field'),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select an option';
        }
        return null;
      },
    );
  }
}
