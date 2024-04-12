import 'package:farm_fresh/src/features/home/presentation/views/seller_home_view.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class SellerMainView extends HookWidget {
  const SellerMainView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    List<Widget> pages = const [
      SellerHomeView(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex.value,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (value) {
          selectedIndex.value = value;
        },
        enableFeedback: false,
        backgroundColor: appColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColors.green,
        unselectedItemColor: appColors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
          // color: appColors.black,
        ),
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(homeOutlined),
            label: 'Home',
            activeIcon: SvgPicture.asset(homeFilled),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(communityOutlined),
            label: 'Community',
            activeIcon: SvgPicture.asset(communityFilled),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(statisticsOutlined),
            label: 'Statistics',
            activeIcon: SvgPicture.asset(statisticsFilled),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(profileOutlined),
            label: 'Profile',
            activeIcon: SvgPicture.asset(profileFilled),
          ),
        ],
      ),
    );
  }
}
