import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'stack_align_state.dart';

class StackAlignCubit extends Cubit<StackAlignState> {
  StackAlignCubit() : super(const StackAlignState());

  void onChangeAlignment(Alignment? newValue) {
    emit(state.copywith(alignment: newValue));
  }

  void onChangeTextDirection(TextDirection? newValue) {
    emit(state.copywith(textDirection: newValue));
  }

  void onChangeStackFit(StackFit? newValue) {
    emit(state.copywith(stackFit: newValue));
  }

  void onChangeClip(Clip? newValue) {
    emit(state.copywith(clip: newValue));
  }
}
