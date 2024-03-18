import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registerProvider = ChangeNotifierProvider((ref) => RegisterViewModel());

class RegisterViewModel extends ChangeNotifier {
  int? selectedOption;

  void updateSelectedOption(int value) {
    selectedOption = value;
    notifyListeners();
  }
}
