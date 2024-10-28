import 'package:flutter/material.dart';
import 'package:mcdonald_project/components/more_detail.dart';
import 'package:mcdonald_project/components/more_image.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'More',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            MoreImage(), // Display the burger image here
          ],
        ),
      ),
      body: const MoreDetail(), // Use the new options list widget
    );
  }
}
