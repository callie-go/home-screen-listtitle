import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/row_column/cubit/row_column_cubit.dart';
import 'package:home_screen_listtile/src/feature/row_column/views/row_column_view.dart';

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RowColumnCubit(),
      child: const RowColumnView(),
    );
  }
}
