import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/container_decoration/cubit/container_decoration_cubit.dart';

class MainScreenContainerDecoration extends StatelessWidget {
  const MainScreenContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContainerDecorationCubit, ContainerDecorationState>(
        builder: (context, state) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        decoration: BoxDecoration(
          border: state.border
              ? Border.all(
                  color: Colors.deepOrange,
                  width: 5.0,
                )
              : null,
          borderRadius: BorderRadius.circular(state.borderRadius),
          boxShadow: state.boxShadow
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 15.0,
                    offset: const Offset(2, 2),
                  ),
                ]
              : null,
          backgroundBlendMode: state.backgroundBlendMode,
          color: state.background,
        ),
      );
    });
  }
}
