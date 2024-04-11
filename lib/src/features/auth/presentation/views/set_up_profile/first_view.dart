import 'package:farm_fresh/src/features/auth/presentation/view_models/seller_profile_setup.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/set_up_profile/widgets/category_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CategoryView extends ConsumerWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categories = ref.watch(sellerProfileSetUpProvider).categories;
    final selectedCategories =
        ref.watch(sellerProfileSetUpProvider).selectedCategories;

    return Table(
      defaultColumnWidth: const IntrinsicColumnWidth(),
      children: List.generate(4, (rowIndex) {
        return TableRow(
          children: List.generate(3, (colIndex) {
            final index = rowIndex * 3 + colIndex;
            return CategoryContainer(
              text: categories[index],
              isSelected: selectedCategories.contains(categories[index]),
              onTap: () {
                ref
                    .read(sellerProfileSetUpProvider.notifier)
                    .addOrRemoveCategory(categories[index]);
              },
            );
          }),
        );
      }),
    );
  }
}
