import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  // Track the expanded state of each FAQ item
  final List<bool> _isExpandedList = [false, false, false, false, false, false];

  // Sample questions and answers
  final List<String> questions = [
    'What is this app for?',
    'I have no internet connection, I cannot use\nthe app',
    'I have no network in the restaurant, how can I\nredeem my offers?',
    'I activated the offer but did not have enough\ntime to redeem it. Can I re-activate it?',
    'When I activate an offer the golden coin and\nthe timer are not displayed and the page\ndescribing the offer gets closed.',
    'I have forgotten my password and my\nidentification email. What can I do?',
  ];

  final List<String> answers = [
    'In addition to providing information on our products and restaurants, we also offer app users many interesting offers. This is an app for our loyal McDonald\'s customers.',
    'An internet connection is required to ensure you are viewing the most recent information in the app.',
    'To redeem an offer, simply activate it in an area with a connection (for example outside for a better 3G connection). The offer will remain visible for a set period of time even after disconnecting from the network.',
    'We are sorry, in this case the offer is lost, you have a certain period of time when you click on redeem offer. Some of our offers are repeated; please refer to the terms and conditions.',
    'If you have activated the offer on your phone but with another account, this is normal behavior as it is not possible to activate the same offer twice on the same phone but with different accounts.',
    'You can reset your password by entering your email address in the ‘My Account’ menu in the app. Contact us by using the form below in case you have forgotten your email address or don’t receive the link.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'FAQs',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/FAQs.png', // Replace with the actual image path
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'GENERAL QUESTIONS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            for (int i = 0; i < _isExpandedList.length; i++)
              Column(
                children: [
                  _buildFAQItem(questions[i], i),
                  _buildAnswer(answers[i], i), // This will show/hide the answer
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem(String question, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isExpandedList[index] = !_isExpandedList[index];
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: _isExpandedList[index] ? const Color.fromARGB(255, 172, 45, 36) : const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                question,
                style: TextStyle(
                  color: _isExpandedList[index] ? Colors.white : Colors.black, // Change text color based on expansion state
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                _isExpandedList[index] ? Icons.remove : Icons.add,
                color: Colors.amber,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnswer(String answer, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Visibility(
        visible: _isExpandedList[index],
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0), // Center the text
          child: Text(
            answer,
            style: const TextStyle(color: Colors.black),
            textAlign: TextAlign.start, // Optional: Center align the text
          ),
        ),
      ),
    );
  }
}
