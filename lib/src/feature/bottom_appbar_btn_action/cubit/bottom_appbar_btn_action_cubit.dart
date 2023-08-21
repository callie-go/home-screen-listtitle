import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'bottom_appbar_btn_action_state.dart';

class BottomAppbarBtnActionCubit extends Cubit<BottomAppbarBtnActionState> {
  BottomAppbarBtnActionCubit() : super(const BottomAppbarBtnActionState());

  void changeShowFloatingActionButton(bool value) {
    emit(state.copyWith(
      showFloatingActionButton: value,
      floatingActionButtonLocation:
          value ? FloatingActionButtonLocation.endDocked : null,
    ));
  }

  void changeBottomAppBarShowNotchStatus(bool value) {
    emit(state.copyWith(showNotch: value));
  }

  void changeFloatingActionButtonLocation(FloatingActionButtonLocation? value) {
    if (state.showFloatingActionButton) {
      emit(state.copyWith(floatingActionButtonLocation: value));
    }
  }
}
