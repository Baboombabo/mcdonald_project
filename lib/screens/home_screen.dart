import 'package:flutter/material.dart';
import 'package:mcdonald_project/components/french_fries_detail.dart';
import 'package:mcdonald_project/components/home_card_detail.dart';
import 'package:mcdonald_project/components/top_home_detail.dart'; // Adjust the import path if necessary
import 'package:mcdonald_project/screens/coupon_screen.dart'; // Import the French Fries detail screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToCoupons(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CouponScreen()),
    );
  }

  void navigateToFrenchFries(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FrenchFriesDetail()), // Navigate to French Fries detail screen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wrap TopHomeDetails in InkWell for clickability
            InkWell(
              onTap: () => navigateToFrenchFries(context), // Navigate on tap
              child: const TopHomeDetails(),
            ),
            const Divider(height: 30), // Now includes the image // Spacing after top details
            const HomeCardDetail(
              title: 'All Deals',
              subtitle: 'All Deals\'re here!',
              imagePath: 'assets/images/all_deal.png',
              index: 1,
              imageHeight: 220,
              imageWidth: 250,
            ),
            const SizedBox(height: 20),
            const HomeCardDetail(
              title: 'Dessert',
              subtitle: 'Fresh up your day',
              imagePath: 'assets/images/dessert_deal.png',
              index: 1,
              imageHeight: 170,
              imageWidth: 150,
            ),
            const SizedBox(height: 20),
            const HomeCardDetail(
              title: 'Snack',
              subtitle: 'Tasty Snack',
              imagePath: 'assets/images/snack_deal.png',
              index: 1,
              imageHeight: 200,
              imageWidth: 220,
            ),
          ],
        ),
      ),
    );
  }
}
