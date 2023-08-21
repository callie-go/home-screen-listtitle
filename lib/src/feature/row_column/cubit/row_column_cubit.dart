// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'row_column_state.dart';

class RowColumnCubit extends Cubit<RowColumnState> {
  RowColumnCubit() : super(const RowColumnState());

  void toggleIsRow() {
    emit(state.copyWith(isRow: !state.isRow));
  }

  void onChangeMainAxisSize(MainAxisSize? newValue) {
    emit(state.copyWith(mainAxisSize: newValue));
  }

  void onChangeMainAxisAlignment(MainAxisAlignment? newValue) {
    emit(state.copyWith(mainAxisAlignment: newValue));
  }

  void onChangeCrossAxisAlignment(CrossAxisAlignment? newValue) {
    emit(state.copyWith(crossAxisAlignment: newValue));
  }

  void onChangeVerticalDirection(VerticalDirection? newValue) {
    emit(state.copyWith(verticalDirection: newValue));
  }

  void onChangeTextDirection(TextDirection? newValue) {
    emit(state.copyWith(textDirection: newValue));
  }

  void onChangeTextBaseline(TextBaseline? newValue) {
    emit(state.copyWith(textBaseline: newValue));
  }
}
