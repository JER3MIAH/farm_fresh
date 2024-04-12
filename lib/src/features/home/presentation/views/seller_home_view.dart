import 'package:farm_fresh/src/features/home/presentation/widgets/seller_product_container.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellerHomeView extends HookWidget {
  const SellerHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchControler = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 55.dy),
        child: Column(
          // shouldScroll: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.dx),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Akindele,\n',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: '24th May 2022',
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                                color: appColors.grey.withOpacity(.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppInkWell(
                        onTap: () {},
                        isCircle: true,
                        child: SvgPicture.asset(notificationIcon),
                      ),
                    ],
                  ),
                  YBox(20.dy),
                  AppTextField(
                    controller: searchControler,
                    labelText: 'Search products',
                    prefixWidget: Padding(
                      padding: EdgeInsets.only(right: 8.dx),
                      child: SvgPicture.asset(searchIcon),
                    ),
                  ),
                  YBox(20.dy),
                  AppText(
                    isStartAligned: true,
                    text: 'Products',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            YBox(10.dy),
            Expanded(
              child: GridView.count(
                childAspectRatio: 142.dx / 190.dy,
                crossAxisCount: 2,
                children: List.generate(
                  9,
                  (index) => SellerProductContainer(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: appColors.green,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: appColors.white,
        ),
      ),
    );
  }
}
