import 'package:flutter/material.dart';

class MatchaMcflurryTopSection extends StatelessWidget {
  const MatchaMcflurryTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Content of the top section (excluding the image)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
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
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                '20% OFF',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
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
                        '49.-',
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
        // Positioned image in the top right corner
        Positioned(
          top: 10,
          right: 50,
          child: SizedBox(
            width: 110, // Fixed width for the image
            height: 150, // Fixed height for the image
            child: Image.asset(
              'assets/images/matcha_mcflurry.png',
              fit: BoxFit.cover, // Ensures the image covers the box size
            ),
          ),
        ),
      ],
    );
  }
}
