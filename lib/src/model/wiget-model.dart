import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/router/route_names.dart';

class WidgetModel {
  final String title;
  final IconData icon;
  final String subTitle;
  final String router;

  const WidgetModel(this.title, this.subTitle, this.icon, this.router);
}

const widgets = [
  WidgetModel(
      "Cupertino",
      "Beatiful and high-fidelity widgets for current iOS design languge",
      Icons.phone_android,
      RouterNames.cupertino),
  WidgetModel("Typography", "All of the predefined text styles",
      Icons.format_size, RouterNames.typography),
  WidgetModel("Bottom app bar", "Bottom application bar", Icons.menu,
      RouterNames.bottomAppBar),
  WidgetModel(
      "Button",
      "RaisedButton, FlatButton, DropdownButton, FloatingActionButton, Inkwell, RawMaterialButton",
      Icons.web,
      RouterNames.button),
  WidgetModel("List", "Scrolling list layout", Icons.format_list_bulleted,
      RouterNames.list),
  WidgetModel("Card", "Cards with rounded corners and secoration",
      Icons.chrome_reader_mode, RouterNames.card),
  WidgetModel(
      "List Title",
      "A single fixed-height row that typically contains some text as well as a leading or trailing icon",
      Icons.format_list_bulleted,
      RouterNames.list),
  WidgetModel("Alert", "Alerts, SnackBar & Tooltip", Icons.tab_unselected,
      RouterNames.alert),
  WidgetModel("Text Field", "Text Field, Text Field Form", Icons.menu,
      RouterNames.textField),
  WidgetModel(
      'Row & Column',
      "A widget that displays its children in a horizonal and vertical array",
      Icons.graphic_eq,
      RouterNames.rowAndColumn),
  WidgetModel(
      "Wrap & chip", "Wrap & Chip", Icons.edit, RouterNames.wrapAndChip),
  WidgetModel("Stack & Align", "Stack & Align", Icons.content_copy,
      RouterNames.stackAndAlign)
];
