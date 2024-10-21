import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../resources/strings_manager.dart';

class SelectedItemCubit extends Cubit<String> {
  SelectedItemCubit() : super(AppStrings.all);

  void selectItem(String selectedItem) {
    emit(selectedItem);
  }
}
