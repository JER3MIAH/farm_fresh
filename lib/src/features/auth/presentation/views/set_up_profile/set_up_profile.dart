import 'package:farm_fresh/src/features/auth/presentation/view_models/seller_profile_setup.dart';
import 'package:farm_fresh/src/features/auth/presentation/views/set_up_profile/widgets/category_container.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SetUpProfileView extends ConsumerWidget {
  const SetUpProfileView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final categories = ref.watch(sellerProfileSetUpProvider).categories;
    final selectedCategories =
        ref.watch(sellerProfileSetUpProvider).selectedCategories;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackAndAppIcon(),
            YBox(33.dy),
            Text(
              'Set up your profile',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            YBox(10.dy),
            Text(
              'Choose the category that best describes your products.',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: appColors.grey.withOpacity(.5),
              ),
            ),
            YBox(40.dy),
            Table(
              defaultColumnWidth: const IntrinsicColumnWidth(),
              children: List.generate(4, (rowIndex) {
                return TableRow(
                  children: List.generate(3, (colIndex) {
                    final index = rowIndex * 3 + colIndex;
                    return CategoryContainer(
                      text: categories[index],
                      isSelected:
                          selectedCategories.contains(categories[index]),
                      onTap: () {
                        ref
                            .read(sellerProfileSetUpProvider.notifier)
                            .addOrRemoveCategory(categories[index]);
                      },
                    );
                  }),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dy, vertical: 30.dy),
        child: AppButton(
          title: 'Next',
          onTap: () {},
        ),
      ),
    );
  }
}
