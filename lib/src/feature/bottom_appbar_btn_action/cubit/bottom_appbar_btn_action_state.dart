part of 'bottom_appbar_btn_action_cubit.dart';

class BottomAppbarBtnActionState extends Equatable {
  const BottomAppbarBtnActionState({
    this.showFloatingActionButton = true,
    this.showNotch = true,
    this.floatingActionButtonLocation = FloatingActionButtonLocation.endDocked,
  });

  final bool showFloatingActionButton;
  final bool showNotch;
  final FloatingActionButtonLocation floatingActionButtonLocation;

  @override
  List<Object> get props => [
        showFloatingActionButton,
        showNotch,
        floatingActionButtonLocation,
      ];

  BottomAppbarBtnActionState copyWith({
    bool? showFloatingActionButton,
    bool? showNotch,
    FloatingActionButtonLocation? floatingActionButtonLocation,
  }) {
    return BottomAppbarBtnActionState(
      showFloatingActionButton:
          showFloatingActionButton ?? this.showFloatingActionButton,
      showNotch: showNotch ?? this.showNotch,
      floatingActionButtonLocation:
          floatingActionButtonLocation ?? this.floatingActionButtonLocation,
    );
  }
}

