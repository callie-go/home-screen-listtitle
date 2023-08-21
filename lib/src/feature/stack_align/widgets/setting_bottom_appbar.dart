import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_screen_listtile/src/feature/stack_align/cubit/stack_align_cubit.dart';
import 'package:home_screen_listtile/widgets/setting_row.dart';

class SettingBottomAppbar extends StatelessWidget {
  const SettingBottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: BlocBuilder<StackAlignCubit, StackAlignState>(
        builder: (context, state) {
          final cubit = context.read<StackAlignCubit>();
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SettingRow(
                title: 'Alignment',
                currentValue: state.alignment,
                valueList: const [
                  MapEntry('Top Left', Alignment.topLeft),
                  MapEntry('Top Center', Alignment.topCenter),
                  MapEntry('Top Right', Alignment.topRight),
                  MapEntry('Center Left', Alignment.centerLeft),
                  MapEntry('Center', Alignment.center),
                  MapEntry('Center Right', Alignment.centerRight),
                  MapEntry('Bottom Left', Alignment.bottomLeft),
                  MapEntry('Bottom Center', Alignment.bottomCenter),
                  MapEntry('Bottom Right', Alignment.bottomRight),
                ],
                onChanged: (value) => cubit.onChangeAlignment(value),
              ),
              SettingRow(
                title: 'TextDirection',
                currentValue: state.textDirection,
                valueList: const [
                  MapEntry("LTR", TextDirection.ltr),
                  MapEntry('RTL', TextDirection.rtl)
                ],
                onChanged: (value) => cubit.onChangeTextDirection(value),
              ),
              SettingRow(
                title: 'StackFit',
                currentValue: state.stackFit,
                valueList: const [
                  MapEntry('Loose', StackFit.loose),
                  MapEntry('Expand', StackFit.expand),
                  MapEntry('Passthrough', StackFit.passthrough)
                ],
                onChanged: (value) => cubit.onChangeStackFit(value),
              ),
              SettingRow(
                title: 'Clip',
                currentValue: state.clip,
                valueList: const [
                  MapEntry('None', Clip.none),
                  MapEntry('HardEdge', Clip.hardEdge),
                  MapEntry('AntiAlias', Clip.antiAlias),
                  MapEntry(
                      'AntiAliasWithSaveLayer', Clip.antiAliasWithSaveLayer)
                ],
                onChanged: (value) => cubit.onChangeClip(value),
              )
            ],
          );
        },
      ),
    );
  }
}
