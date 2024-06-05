import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/features/personalization/screens/settings/settings.dart';
import 'package:shoe_app/features/shop/screens/wish_list_screen/wish_list_screen.dart';
import 'package:shoe_app/features/shop/screens/home/home_screen.dart';
import 'package:shoe_app/features/shop/screens/store/store_screen.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final isDark = EHelperFunctions.isDarkMode(context);

    return  Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
        backgroundColor: isDark ? EColors.blackColor : EColors.whiteColor,
        elevation: 0,
        indicatorColor: isDark ? EColors.primaryColor.withOpacity(0.1) : EColors.primaryColor.withOpacity(0.1),
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: controller.UpdateCurrentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{

  ///variable
  final RxInt selectedIndex = 0.obs;

  void UpdateCurrentIndex(index){
    selectedIndex.value = index;
  }

  final screens = [const HomeScreen(), const StoreScreen(),const WishListScreen(),const SettingScreen()];

}