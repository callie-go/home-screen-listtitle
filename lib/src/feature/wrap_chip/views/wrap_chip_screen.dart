import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/wrap_chip/cubit/wrap_chip_cubit.dart';
import 'package:home_screen_listtile/src/feature/wrap_chip/views/wrap_chip_view.dart';

class WrapAndChipScreen extends StatelessWidget {
  const WrapAndChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WrapChipCubit(),
      child: const WrapAndChipView(),
    );
  }
}
