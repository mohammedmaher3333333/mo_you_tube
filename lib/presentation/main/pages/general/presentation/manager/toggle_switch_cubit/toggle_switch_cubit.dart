import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleSwitchCubit extends Cubit<bool> {
  ToggleSwitchCubit() : super(false);

  void toggle() {
    emit(state ? false : true);
  }
}