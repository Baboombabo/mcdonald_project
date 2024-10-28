import 'package:flutter/material.dart';
import 'package:mcdonald_project/components/redeem_popup.dart';
import 'package:mcdonald_project/components/term_conditions_detail.dart';
import 'french_fries_top_section.dart';

class FrenchFriesDetail extends StatelessWidget {
  const FrenchFriesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack( // Use Stack to layer the elements
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top section with the image
                const FrenchFriesTopSection(),
                const SizedBox(height: 15),

                // Description Section
                const Text(
                  '(L) French Fries',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '(L) French fries. Only 59 baht. (Offer is limited to one redemption throughout the campaign period)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),

                // Rules Section
                const Text(
                  'Rules',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.access_time, color: Colors.black),
                  title: Text('00:00 - 23:59'),
                ),
                const Divider(height: 2),
                const ListTile(
                  leading: Icon(Icons.person, color: Colors.black),
                  title: Text('Log in to redeem'),
                ),
                const Divider(height: 2),
                const SizedBox(height: 5),

                // Terms & Conditions and How it works
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TermsConditionsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(Icons.help_outline, color: Colors.black),
                  title: Text('How it works'),
                ),
              ],
            ),
          ),
          // Positioned Arrow Button with Circular Background
          Positioned(
            top: 16, // Adjust as needed
            left: 16, // Position the circle
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Circle background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: IconButton(
                padding: const EdgeInsets.only(left: 10), // Adjust padding to move arrow right
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
        ],
      ),
      // Fixed "Redeem" button at the bottom of the screen
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ElevatedButton(
          onPressed: () => RedeemPopup.show(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            minimumSize: const Size(double.infinity, 60), // Full-width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2), // Square-like shape
            ),
          ),
          child: const Text(
            'Redeem',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
