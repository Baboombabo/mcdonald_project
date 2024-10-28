import 'package:flutter/material.dart';

class MoreImage extends StatelessWidget {
  const MoreImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/burger.png', // Path to the burger image
      height: 120,
      
    );
  }
}
