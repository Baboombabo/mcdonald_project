import 'package:flutter/material.dart';

class CornPieTopSection extends StatelessWidget {
  const CornPieTopSection({super.key});

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
                ),
                // Discount tag
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    '34% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Price details
                Container(
                  padding: const EdgeInsets.only(left: 15, bottom: 20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '19.-',
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
                            '29.-',
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
        // Corn Pie Image positioned using Stack
        Positioned(
          top: 40,
          right: 10,
          child: SizedBox(
            width: 180, // Fixed width for the image
            height: 100, // Fixed height for the image
            child: Image.asset(
              'assets/images/corn_pie.png',
              fit: BoxFit.cover, // Ensures the image covers the box size
            ),
          ),
        ),
      ],
    );
  }
}
