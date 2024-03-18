import 'package:farm_fresh/src/features/auth/data/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpProvider = ChangeNotifierProvider((ref) {
  return SingupViewModel();
});

class SingupViewModel extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  UserType? _userType;
  UserType? get userType => _userType;
  set userType(UserType? value) {
    _userType = value;
    notifyListeners();
  }

  void setUserType(int value) {
    if (value == 1) {
      _userType = UserType.buyer;
    } else {
      _userType = UserType.seller;
    }
  }

  String fullName = '';
  String number = '';
  String email = '';
  String password = '';
  String errorMessage = '';

  bool _buttonEnabled = false;
  bool get buttonEnabled => _buttonEnabled;
  set buttonEnabled(bool value) {
    _buttonEnabled = value;
    notifyListeners();
  }

  void onInputChanged({
    required String firstName,
    required String email,
    required String phoneNumber,
    required String password,
  }) {
    if (firstName.isNotEmpty &&
        email.isNotEmpty &&
        phoneNumber.isNotEmpty &&
        password.isNotEmpty) {
      buttonEnabled = true;
    } else {
      buttonEnabled = false;
    }
  }

  void disposeValues() {
    fullName = '';
    number = '';
    email = '';
    password = '';
    errorMessage = '';
  }
}
