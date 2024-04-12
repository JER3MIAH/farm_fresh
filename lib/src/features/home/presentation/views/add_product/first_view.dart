import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EnterProductDetails extends HookWidget {
  const EnterProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final categoryController = useTextEditingController();
    final priceController = useTextEditingController();
    final stockController = useTextEditingController();

    return Column(
      children: [
        AppTextField(
          controller: nameController,
          labelText: 'Product name',
        ),
        YBox(30.dy),
        AppTextField(
          controller: categoryController,
          labelText: 'Product category',
        ),
        YBox(30.dy),
        AppTextField(
          controller: stockController,
          labelText: 'Stock quantity',
        ),
        YBox(30.dy),
        AppTextField(
          controller: priceController,
          labelText: 'Price per unit',
        ),
        YBox(30.dy),
      ],
    );
  }
}
