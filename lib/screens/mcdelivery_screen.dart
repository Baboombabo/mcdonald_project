import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class McdeliveryScreen extends StatelessWidget {
  const McdeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, // Adjust the height to accommodate the additional text
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'McDelivery',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5), // Add some spacing between the title and the additional text
              Text(
                '**Clickable only available\nfor running flutter with chrome**',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.red, // Slightly lighter color for the subtitle
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchMcDeliveryUrl,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber, // Set the text color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adjust the padding
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ), // Adjust the text style
          ),
          child: const Text('Click for going to McDelivery website'),
        ),
      ),
    );
  }

  Future<void> _launchMcDeliveryUrl() async {
    const url = 'https://www.mcdonalds.co.th/mcDelivery/category/promotion';

    if (await canLaunch(url)) {
      await launchUrl(Uri.parse(url)); // Use launchUrl instead of launch
    } else {
      print('Could not launch $url');
      throw 'Could not launch $url';
    }
  }
}
