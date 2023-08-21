import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/stack_align/cubit/stack_align_cubit.dart';
import 'package:home_screen_listtile/src/feature/stack_align/views/stack_align_view.dart';

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StackAlignCubit(),
      child: const StackAlignView(),
    );
  }
}
