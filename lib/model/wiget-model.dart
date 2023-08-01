import 'package:flutter/material.dart';

class WidgetModel {
  final String title;
  final IconData icon;
  final String subTitle;

  WidgetModel(this.title, this.subTitle, this.icon);
}

final List<WidgetModel> widgets = [
  WidgetModel(
      "Cupertino",
      "Beatiful and high-fidelity widgets for current iOS design languge",
      Icons.phone_android),
  WidgetModel(
      "Typography", "All of the predefined text styles", Icons.format_size),
  WidgetModel("Bottom app bar", "Bottom application bar", Icons.menu),
  WidgetModel(
      "Button",
      "RaisedButton, FlatButton, DropdownButton, FloatingActionButton, Inkwell, RawMaterialButton",
      Icons.web),
  WidgetModel("List", "Scrolling list layout", Icons.format_list_bulleted),
  WidgetModel("Card", "Cards with rounded corners and secoration",
      Icons.chrome_reader_mode),
  WidgetModel(
      "List Title",
      "A single fixed-height row that typically contains some text as well as a leading or trailing icon",
      Icons.format_list_bulleted),
  WidgetModel("Alert", "Alerts, SnackBar & Tooltip", Icons.tab_unselected),
  WidgetModel("Text Field", "Text Field, Text Field Form", Icons.menu),
  WidgetModel(
      'Row & Column',
      "A widget that displays its children in a horizonal and vertical array",
      Icons.graphic_eq),
  WidgetModel("Wrap & chip", "Wrap & Chip", Icons.edit),
  WidgetModel("Stack & Align", "Stack & Align", Icons.content_copy)
];
