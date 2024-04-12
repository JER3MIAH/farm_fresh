import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sellerHomeProvider =
    ChangeNotifierProvider((ref) => SellerHomeViewModel());

class SellerHomeViewModel extends ChangeNotifier {
  List<String> products = [
    'Spinach',
    'Carrot',
    'Potatoes',
    'Eggs',
    'Fish',
    'Cabbages',
    'Asparagus',
    'Lettuce',
    'Peppers',
  ];
}
