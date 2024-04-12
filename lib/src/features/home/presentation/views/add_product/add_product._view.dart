import 'package:farm_fresh/src/features/home/presentation/views/add_product/first_view.dart';
import 'package:farm_fresh/src/features/home/presentation/views/add_product/second_view.dart';
import 'package:farm_fresh/src/features/navigation/app_navigator.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AddProductView extends HookWidget {
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final isFirst = useState<bool>(true);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.dx).copyWith(top: 55.dy),
        child: Column(
          children: [
            const BackAndAppTitle(text: 'Add product'),
            YBox(33.dy),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  isFirst.value = (value == 0);
                },
                children: const [
                  EnterProductDetails(),
                  AddProductDescription(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 15.dx).copyWith(bottom: 33.dy),
        child: AppButton(
          title: isFirst.value ? 'Next' : 'Add product',
          onTap: () {
            if (isFirst.value) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
              );
            } else {
              AppNavigator.popRoute();
            }
          },
        ),
      ),
    );
  }
}
