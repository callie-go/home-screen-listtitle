import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/bottom_appbar_btn_action/cubit/bottom_appbar_btn_action_cubit.dart';
import 'package:home_screen_listtile/widgets/setting_row.dart';

class SwitcherWidget extends StatelessWidget {
  const SwitcherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomAppbarBtnActionCubit, BottomAppbarBtnActionState>(
      buildWhen: (previous, current) {
        return previous.showFloatingActionButton !=
                current.showFloatingActionButton ||
            previous.showNotch != current.showNotch;
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SettingRow<bool>(
              settingType: SettingType.switcher,
              title: 'Floating Action Button',
              currentValue: state.showFloatingActionButton,
              onChanged: (value) {
                context
                    .read<BottomAppbarBtnActionCubit>()
                    .changeShowFloatingActionButton(value ?? false);
              },
            ),
            SettingRow<bool>(
              settingType: SettingType.switcher,
              title: 'Notch',
              currentValue: state.showNotch,
              onChanged: (value) {
                context
                    .read<BottomAppbarBtnActionCubit>()
                    .changeBottomAppBarShowNotchStatus(value ?? false);
              },
            ),
          ],
        );
      },
    );
  }
}
