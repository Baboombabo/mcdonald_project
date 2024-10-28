import 'package:flutter/material.dart';
import 'package:mcdonald_project/components/reset_password_detail.dart';
import 'package:mcdonald_project/components/sign_up.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Good things\nahead",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png', // Replace with your image path
                  height: 60,
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Email TextField with customized borders
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.black), // Default black border
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.amber), // Amber border when focused
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Password TextField with customized borders
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.black), // Default black border
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.amber), // Amber border when focused
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {
                    // Handle show/hide password
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Adjusted individual padding for 'Forgot your password?' and 'Not a member yet?'
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ResetPasswordDetail()), // Navigate to SignInPage
                      ); // Handle forgot password
                    },
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 2), // Space between the texts
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text('Not a member yet?'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignUpPage()), // Navigate to SignInPage
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
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
            'Login',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
