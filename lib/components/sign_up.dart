import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUpPage({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
             Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/logo.png', // Replace with the correct asset path
                height: 60,
              ),
            ),
              const SizedBox(height: 8),
              const Text(
                'Personal details',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Let us know how to properly address you. Please fill in your details.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'First name',
                  hintText: 'First name',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Default black border
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber), // Amber border when focused
                ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Last name',
                  hintText: 'Last name',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Default black border
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber), // Amber border when focused
                ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  hintText: '023-999-999',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Default black border
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber), // Amber border when focused
                ),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                '* Required information',
                style: TextStyle(color: Colors.red),
              ),
              const Spacer(),
            ],
          ),
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
            'Continue',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
