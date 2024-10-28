import 'package:flutter/material.dart';

class ResetPasswordDetail extends StatelessWidget {
  const ResetPasswordDetail({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
             Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/key_icon.png', // Replace with the correct asset path
                height: 60,
              ),
            ),
            const SizedBox(height: 8),
            // Title
            const Text(
              "Reset password",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // Subtitle
            const Text(
              "We will send an email to your inbox about how to reset your password. Remember to check your spam folder.",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 30),
            // Email TextField
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Default black border
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber), // Amber border when focused
                ),
              ),
            ),
            const Spacer(),
            // Reset password button
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ElevatedButton(
          onPressed: () {}, // Call the show method from RedeemPopup
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            minimumSize: const Size(double.infinity, 60), // Full-width button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2), // Square-like shape
            ),
          ),
          child: const Text(
            'Reset password',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
