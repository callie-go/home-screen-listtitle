import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/cubit/bottom_appbar_btn_action_cubit.dart';
import 'package:home_screen_listtile/widgets/setting_row.dart';

class RadioBtnWidget extends StatelessWidget {
  const RadioBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppbarBtnActionCubit, BottomAppbarBtnActionState>(
      buildWhen: (previous, current) {
        return previous.floatingActionButtonLocation !=
                current.floatingActionButtonLocation ||
            previous.showFloatingActionButton !=
                current.showFloatingActionButton;
      },
      builder: (context, state) {
        if (state.showFloatingActionButton == false) {
          return const SizedBox();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Floating Action Button Position',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SettingRow<FloatingActionButtonLocation>(
              settingType: SettingType.radio,
              title: 'Docked - End',
              currentValue: FloatingActionButtonLocation.endDocked,
              radioGroupValue: state.floatingActionButtonLocation,
              onChanged: (value) {
                context
                    .read<BottomAppbarBtnActionCubit>()
                    .changeFloatingActionButtonLocation(value);
              },
            ),
            const SizedBox(height: 10),
            SettingRow<FloatingActionButtonLocation>(
              settingType: SettingType.radio,
              title: 'Docked - Center',
              currentValue: FloatingActionButtonLocation.centerDocked,
              radioGroupValue: state.floatingActionButtonLocation,
              onChanged: (value) {
                context
                    .read<BottomAppbarBtnActionCubit>()
                    .changeFloatingActionButtonLocation(value);
              },
            ),
            const SizedBox(height: 10),
            SettingRow<FloatingActionButtonLocation>(
              settingType: SettingType.radio,
              title: 'Floating - End',
              currentValue: FloatingActionButtonLocation.endFloat,
              radioGroupValue: state.floatingActionButtonLocation,
              onChanged: (value) {
                context
                    .read<BottomAppbarBtnActionCubit>()
                    .changeFloatingActionButtonLocation(value);
              },
            ),
            const SizedBox(height: 10),
            SettingRow<FloatingActionButtonLocation>(
              settingType: SettingType.radio,
              title: 'Floating - Center',
              currentValue: FloatingActionButtonLocation.centerFloat,
              radioGroupValue: state.floatingActionButtonLocation,
              onChanged: (value) {
                context
                    .read<BottomAppbarBtnActionCubit>()
                    .changeFloatingActionButtonLocation(value);
              },
            ),
          ],
        );
      },
    );
  }
}
