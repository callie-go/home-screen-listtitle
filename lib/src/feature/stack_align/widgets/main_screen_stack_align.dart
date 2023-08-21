import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/stack_align/cubit/stack_align_cubit.dart';

class MainStackAlign extends StatelessWidget {
  const MainStackAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: BlocBuilder<StackAlignCubit, StackAlignState>(
      builder: (context, state) {
        return Stack(
          alignment: state.alignment,
          fit: state.stackFit,
          clipBehavior: state.clip,
          textDirection: state.textDirection,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.blue[400],
            ),
            Container(
              width: 170,
              height: 170,
              color: Colors.greenAccent[400],
            ),
            Positioned(
              top: 200,
              child: Container(
                width: 120,
                height: 120,
                color: Colors.orange,
              ),
            )
          ],
        );
      },
    ));
  }
}
