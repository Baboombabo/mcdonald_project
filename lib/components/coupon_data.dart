import 'package:flutter/material.dart';

class CouponData extends ChangeNotifier {
  // List of all deals
  final List<Map<String, dynamic>> _deals = [
    {
      'title': '(11 AM - 5 AM) Matcha McFlurry',
      'price': 39,
      'oldPrice': 49,
      'discount': 20,
      'imagePath': 'assets/images/matcha_mcflurry.png',
      'category': 'Dessert',
      'imageHeight': 110.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
    },
    {
      'title': 'Cheese Burger (Beef)',
      'price': 49,
      'oldPrice': 75,
      'discount': 35,
      'imagePath': 'assets/images/cheese_burger.png',
      'category': 'Burger',
      'imageHeight': 90.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(vertical: 10.0),
    },
    {
      'title': 'Pepper Chicken Burger',
      'price': 39,
      'oldPrice': 45,
      'discount': 13,
      'imagePath': 'assets/images/chicken_burger.png',
      'category': 'Burger',
      'imageHeight': 85.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(vertical: 10.0),
    },
    {
      'title': 'Filet O Fish',
      'price': 59,
      'oldPrice': 92,
      'discount': 45,
      'imagePath': 'assets/images/fish_burger.png',
      'category': 'Burger',
      'imageHeight': 85.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(vertical: 10.0),
    },
    {
      'title': '6 Pcs. McNuggets',
      'price': 55,
      'oldPrice': 95,
      'discount': 42,
      'imagePath': 'assets/images/nuggets.png',
      'category': 'Snack',
      'imageHeight': 70.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(vertical: 25.0),
    },
    {
      'title': 'Corn Pie',
      'price': 19,
      'oldPrice': 29,
      'discount': 34,
      'imagePath': 'assets/images/corn_pie.png',
      'category': 'Dessert',
      'imageHeight': 60.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(vertical: 25.0),
    },
    {
      'title': '(L)French Fries',
      'price': 59,
      'oldPrice': 85,
      'discount': 31,
      'imagePath': 'assets/images/french_fries.png',
      'category': 'Snack',
      'imageHeight': 110.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    },
    {
      'title': 'Coke 12 oz.',
      'price': 9,
      'oldPrice': 35,
      'discount': 74,
      'imagePath': 'assets/images/coke.png',
      'category': 'Drink',
      'imageHeight': 100.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
    },
    {
      'title': 'Iced Cappuccino 16 oz.',
      'price': 29,
      'oldPrice': 69,
      'discount': 57,
      'imagePath': 'assets/images/cappuccino.png',
      'category': 'Drink',
      'imageHeight': 100.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
    },
    {
      'title': 'Fuze Tea 16 oz.',
      'price': 19,
      'oldPrice': 45,
      'discount': 58,
      'imagePath': 'assets/images/fuze_tea.png',
      'category': 'Drink',
      'imageHeight': 100.0,
      'alignment': Alignment.centerRight,
      'padding': const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    },
  ];

  String _selectedCategory = '';

  List<Map<String, dynamic>> get deals => _deals;

  String get selectedCategory => _selectedCategory;

  void reorderDeals(String category) {
    if (_selectedCategory == category) {
      // If the same category is clicked again, deselect it and show all deals
      _selectedCategory = '';
    } else {
      // Otherwise, set the selected category
      _selectedCategory = category;
    }
    notifyListeners();
  }
}
