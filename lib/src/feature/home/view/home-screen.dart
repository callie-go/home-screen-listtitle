import 'package:flutter/material.dart';
import 'package:home_screen_listtile/model/wiget-model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Widgets"),
      ),
      body: ListView.separated(
          itemCount: widgets.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 60,
              child: ListTile(
                title: Text(widgets[index].title),
                subtitle: Text(widgets[index].subTitle),
                leading: Icon(widgets[index].icon),
              ),
            );
          }),
    );
  }
}
