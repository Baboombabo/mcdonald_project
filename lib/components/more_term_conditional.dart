import 'package:flutter/material.dart';

class MoreTermConditionsPage extends StatelessWidget {
  const MoreTermConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Laravel', // Change title to match your page
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Center the title
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
              'assets/images/term_conditions.png', // Replace with the correct image path
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
                    'Terms and Conditions for McDonald’s Online Services (THAILAND)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(height: 35),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Last updated: ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w700, // Adjust color as needed
                          ),
                        ),
                        TextSpan(
                          text: '17 March 2017',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFDC143C),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 35),
                  const Text(
                    'IMPORTANT: PLEASE CAREFULLY READ AND UNDERSTAND THESE TERMS AND CONDITIONS ("TERMS"). THEY CONTAIN LIMITATIONS ON McDONALD\'S LIABILITY AND OTHER PROVISIONS THAT AFFECT YOUR LEGAL RIGHTS.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'By installing, accessing or using any websites, mobile apps, email newsletters and subscriptions, and other digital properties on which these terms are posted or referenced (together, "online services"), you are entering into a binding agreement with (“McDonald’s”, "we", or "us"). In Thailand, which it controls and operates from its headquarters at 97/11 Big C Rajdamri Building, Office Room 1, 5th Floor, Rajdamri Road, Lumpini, Pathumwan, Bangkok 10330 THAILAND.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'By accepting these terms, you also understand, accept and consent to McDonald’s Privacy Statement, which is incorporated into, and part of, this agreement. Our Privacy Statement describes how we collect, use and share information.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'The online services are not intended to be used by, or targeted to, anyone under the age of 15MINIMUM AGE. You must be at least 15MINIMUM AGE years old to use the online services. If you are at least 15MINIMUM AGE but not yet 18 years old (or the legal age of majority if different in your jurisdiction), then you must review these terms with your parent or guardian and they must understand and agree to these terms in order for you to use the online services.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'If you or your parent or guardian do not agree to these terms, then you must immediately stop using the online services and request that McDonald’s close any online services account that you have created. You can request account deletion by sending an email to infoservice@feyverly.com, please include the email address of the account that you want deleted.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
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
  runApp(const MaterialApp(home: MoreTermConditionsPage()));
}
