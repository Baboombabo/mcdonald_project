import 'package:flutter/material.dart';
import 'package:mcdonald_project/components/cappuccino_detail.dart';
import 'package:mcdonald_project/components/cheese_burger_detail.dart';
import 'package:mcdonald_project/components/chicken_burger_detail.dart';
import 'package:mcdonald_project/components/coke_detail.dart';
import 'package:mcdonald_project/components/corn_pie_detail.dart';
import 'package:mcdonald_project/components/fish_burger_detail.dart';
import 'package:mcdonald_project/components/french_fries_detail.dart';
import 'package:mcdonald_project/components/fuze_tea_detail.dart';
import 'package:mcdonald_project/components/matcha_mcflurry_detail.dart';
import 'package:mcdonald_project/components/nuggets_detail.dart';
import 'package:provider/provider.dart';
import 'package:mcdonald_project/components/coupon_btn.dart';
import 'package:mcdonald_project/components/coupon_data.dart';
import 'package:mcdonald_project/components/coupon_card_detail.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CouponData(),
      child: Scaffold(
        body: Consumer<CouponData>(
          builder: (context, couponData, child) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deals',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CouponBtn(
                          text: 'Burger',
                          isSelected: couponData.selectedCategory == 'Burger',
                          onPressed: () {
                            couponData.reorderDeals('Burger');
                          },
                        ),
                        CouponBtn(
                          text: 'Snack',
                          isSelected: couponData.selectedCategory == 'Snack',
                          onPressed: () {
                            couponData.reorderDeals('Snack');
                          },
                        ),
                        CouponBtn(
                          text: 'Dessert',
                          isSelected: couponData.selectedCategory == 'Dessert',
                          onPressed: () {
                            couponData.reorderDeals('Dessert');
                          },
                        ),
                        CouponBtn(
                          text: 'Drink',
                          isSelected: couponData.selectedCategory == 'Drink',
                          onPressed: () {
                            couponData.reorderDeals('Drink');
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: couponData.deals.map((deal) {
                      bool shouldDisplay = couponData.selectedCategory == '' ||
                          deal['category'] == couponData.selectedCategory;
                      return shouldDisplay
                          ? Column(
                              children: [
                                DealCard(
                                  title: deal['title'],
                                  price: deal['price'],
                                  oldPrice: deal['oldPrice'],
                                  discount: deal['discount'],
                                  imagePath: deal['imagePath'],
                                  imageHeight: deal['imageHeight'],
                                  onTap: () {
                                    if (deal['title'] == 'Cheese Burger (Beef)') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const CheeseBurgerDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == 'Pepper Chicken Burger') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const ChickenBurgerDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == '6 Pcs. McNuggets') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const NuggetsDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == '(L)French Fries') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const FrenchFriesDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == '(11 AM - 5 AM) Matcha McFlurry') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const MatchaMcflurryDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == 'Filet O Fish') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const FishBurgerDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == 'Corn Pie') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const CornPieDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == 'Coke 12 oz.') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const CokeDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == 'Iced Cappuccino 16 oz.') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const CappuccinoDetail(),
                                        ),
                                      );
                                    } else if (deal['title'] == 'Fuze Tea 16 oz.') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const FuzeTeaDetail(),
                                        ),
                                      );
                                    }
                                  },
                                  alignment: deal['alignment'] ?? Alignment.centerRight,
                                  padding: deal['padding'] ?? const EdgeInsets.symmetric(horizontal: 6.0),
                                ),
                                const SizedBox(height: 20),
                              ],
                            )
                          : Container();
                    }).toList(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
