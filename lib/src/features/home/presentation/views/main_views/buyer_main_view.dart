import 'package:farm_fresh/src/features/home/presentation/views/buyer_home_view.dart';
import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyerMainView extends HookWidget {
  const BuyerMainView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    List<Widget> pages = const [
      BuyerHomeView(),
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
            icon: SvgPicture.asset(ordersOutlined),
            label: 'Orders',
            activeIcon: SvgPicture.asset(ordersFilled),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(listOutlined),
            label: 'List',
            activeIcon: SvgPicture.asset(listFilled),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(savedOutlined),
            label: 'Saved',
            activeIcon: SvgPicture.asset(savedFilled),
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
