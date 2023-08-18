import 'package:flutter/material.dart';
import 'package:home_screen_listtile/src/model/wiget-model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.separated(
          itemCount: widgets.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 60,
              child: ListTile(
                title: Text(widgets[index].title),
                subtitle: Text(widgets[index].subTitle),
                leading: Icon(widgets[index].icon),
                onTap: () {
                  Navigator.pushNamed(context, widgets[index].router);
                },
              ),
            );
          }),
    );
  }
}
