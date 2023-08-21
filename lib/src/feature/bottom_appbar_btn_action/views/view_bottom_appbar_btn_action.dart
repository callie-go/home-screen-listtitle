import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/cubit/bottom_appbar_btn_action_cubit.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/widgets/main_screens_bottom_appbar_btn_action.dart';

class BottomAppbarBtnActionView extends StatelessWidget {
  const BottomAppbarBtnActionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppbarBtnActionCubit, BottomAppbarBtnActionState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Bottom App Bar View'),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          shape: state.showNotch ? const CircularNotchedRectangle() : null,
          child: const Row(
            children: [
              Icon(Icons.menu_rounded),
              SizedBox(width: 15),
              Icon(Icons.search_rounded),
              SizedBox(width: 15),
              Icon(Icons.favorite_rounded),
            ],
          ),
        ),
        floatingActionButtonLocation: state.floatingActionButtonLocation,
        floatingActionButton: state.showFloatingActionButton
            ? FloatingActionButton(
                onPressed: () {},
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              )
            : null,
        body: const MainScreenBottomAppbarBtnAction(),
      );
    });
  }
}
