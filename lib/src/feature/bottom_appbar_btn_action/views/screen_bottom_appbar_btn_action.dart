import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/cubit/bottom_appbar_btn_action_cubit.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/views/view_bottom_appbar_btn_action.dart';

class BottomAppbarBtnActionScreen extends StatelessWidget {
  const BottomAppbarBtnActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomAppbarBtnActionCubit(),
      child: const BottomAppbarBtnActionView(),
    );
  }
}
