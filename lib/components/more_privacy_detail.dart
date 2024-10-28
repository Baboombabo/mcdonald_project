import 'package:flutter/material.dart';

class MorePrivacyDetail extends StatelessWidget {
  const MorePrivacyDetail ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Center the title
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Back button functionality
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/privacy_statement.png', // Replace with the correct image path
              width: screenWidth,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'MCDONALD\'S PRIVACY STATEMENT',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Effective Date: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w800, // Adjust color as needed
                          ),
                        ),
                        TextSpan(
                          text: '24 September 2019',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFDC143C),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'At McDonald\'s, we respect your concerns about privacy. This Privacy Statement (“Statement”) describes the personal information practices of McDonald’s with respect to information about our customers and others who visit our restaurants, Web sites and mobile apps, including the types of personal information we collect, how we may use this information, and with whom we may share it.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'We may collect information from your computer system or mobile device through automated technologies when you visit our restaurants or use our Online Services or in-restaurant technologies. These automated technologies may include cookies, local shared objects, and web beacons. Additional information regarding the use of cookies and other automated technologies is provided in this Statement below. The information we collect may include your Internet Protocol (IP) address; computer/mobile device operating system and browser type; type of mobile device; mobile device settings; the unique device identifier (UDID) or mobile equipment identifier (MEID) for your mobile device; device and component serial numbers; advertising identifier (e.g., IDFAs and IFAs) or similar identifier; the referring website or application; the linked sites, third-party websites, applications or social media where you share Online Services content; and activity related to your use of our Online Services such as the pages you visit on our Sites or in our Mobile Apps.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'The providers of third-party apps, tools, widgets and plug-ins on our Online Services, such as Facebook "Like" buttons, also may use automated means to collect information regarding your interactions with these features. This information is subject to the privacy policies or notices of these providers.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: MorePrivacyDetail()));
}
