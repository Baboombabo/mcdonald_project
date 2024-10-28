import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Terms & Conditions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              '- Valid from Today - 21 October 2024 Only.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Mention this offer while ordering.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Offer is limited to one redemption per transaction.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Offer is a repeating offer. Once redeemed, offer will be made available to you again after midnight.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Visuals are for illustration purposes.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- You will only have 10 minutes to redeem your offer upon clicking "Redeem".',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Not valid with any other McDonald’s food offer/promotion.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Valid only for Dine-in, Take-away & Drive-thru.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            Text(
              '- Not valid for McDelivery.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
