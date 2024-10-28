import 'package:flutter/material.dart';

class TopHomeDetails extends StatelessWidget {
  const TopHomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'HAPPY DEALS',
                style: TextStyle(
                  color: Color(0xFFDC143C),
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            // "Happy Weekend" Text
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Special\nDeals For You',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Row for text
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Expanded to keep the text on the left
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // "ลด 50%" Text
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDC143C),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '31% off',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // "French Fries" Text
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 15), // Keep this to bring it slightly closer
                        child: Text(
                          'French Fries',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      // Yellow background container
                      Container(
                        color: Colors.amber, // Yellow background
                        padding: const EdgeInsets.all(5.0), // Padding for the container
                        margin: const EdgeInsets.only(top: 1.0), // Reduced margin above the container
                        width: double.infinity,  // Make it full width
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // "L only 59.-" Text
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0), // Added padding to move text right
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'L ',
                                      style: TextStyle(color: Color(0xFFDC143C), fontSize: 24, fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: 'only ',
                                      style: TextStyle(color: Colors.black, fontSize: 15,),
                                    ),
                                    TextSpan(
                                      text: '59.-',
                                      style: TextStyle(color: Color(0xFFDC143C), fontSize: 24, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // "(normal price 85.-)" Text
                            const Padding(
                              padding: EdgeInsets.only(left: 30.0), // Padding for the normal price
                              child: Text(
                                '(normal price 85.-)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Expired soon ...',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'L French Fries 31% off',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
              ],
            ),
          ],
        ),
        // Fixed image positioned on the top right
        Positioned(
          top: 90, // Adjust as necessary
          right: 0, // Adjust as necessary
          child: SizedBox(
            height: 160, // Fixed height in pixels
            width: 160, // Fixed width in pixels
            child: Image.asset(
              'assets/images/french_fries.png', // Replace with your image path
              fit: BoxFit.cover, // Maintain aspect ratio
            ),
          ),
        ),
      ],
    );
  }
}
