import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/container_decoration/cubit/container_decoration_cubit.dart';
import 'container_decoration_view.dart';

class ConTainerDecorationScreen extends StatelessWidget {
  const ConTainerDecorationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContainerDecorationCubit(),
      child: const ContainerDecorationView(),
    );
  }
}
