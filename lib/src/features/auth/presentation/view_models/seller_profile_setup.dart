import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sellerProfileSetUpProvider =
    ChangeNotifierProvider((ref) => SellerProfileSetUpViewModel());

class SellerProfileSetUpViewModel extends ChangeNotifier {
  List<String> categories = [
    'Poultry',
    'Grains',
    'Cereals',
    'Crops',
    'Fruits',
    'Legumes',
    'Tubers',
    'Fish',
    'Meat',
    'Vegetables',
    'Livestock',
    'Spices'
  ];

  List<String> selectedCategories = [];

  void addOrRemoveCategory(String category) {
    if (!selectedCategories.contains(category)) {
      selectedCategories.add(category);
    } else {
      selectedCategories.remove(category);
    }
    notifyListeners();
  }
}
