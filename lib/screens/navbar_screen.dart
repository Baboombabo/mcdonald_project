import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_project/screens/coupon_screen.dart';
import 'package:mcdonald_project/screens/home_screen.dart';
import 'package:mcdonald_project/screens/mcdelivery_screen.dart';
import 'package:mcdonald_project/screens/more_screen.dart';
import 'package:mcdonald_project/screens/restaurant_screen.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          height: 80,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 248, 248, 248),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.local_offer),
              label: 'Coupons',
            ),
            NavigationDestination(
              icon: Icon(Icons.delivery_dining),
              label: 'McDelivery',
            ),
            NavigationDestination(
              icon: Icon(Icons.store),
              label: 'Restaurant',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            )
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = [
    const HomeScreen(),        // Your HomeScreen with cards
    const CouponScreen(),      // Your CouponScreen
    const McdeliveryScreen(), // Placeholder for McDelivery
    const RestaurantScreen(),    // Placeholder for Restaurant
    const MoreScreen(),        // Your MoreScreen
  ];
}
