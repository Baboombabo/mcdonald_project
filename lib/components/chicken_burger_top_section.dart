import 'package:flutter/material.dart';

class ChickenBurgerTopSection extends StatelessWidget {
  const ChickenBurgerTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            // Row for the top discount label and expiration
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 227, 227),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Expires soon',
                    style: TextStyle(color: Colors.black),
                  ),
                ), // Reduced spacing for closer alignment
                // Discount tag
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    '13% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Price details
                Container(
                  padding: const EdgeInsets.only(left: 15, bottom: 20), // Move pricing details to the right
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '39.-',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'normal price ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '45.-',
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        // Chicken Burger Image positioned at the top right using Stack
        Positioned(
          top: 30,
          right: 20,
          child: SizedBox(
            width: 160, // Fixed width
            height: 130, // Fixed height
            child: Image.asset(
              'assets/images/chicken_burger.png',
              fit: BoxFit.cover, // Ensure the image covers the box size
            ),
          ),
        ),
      ],
    );
  }
}
