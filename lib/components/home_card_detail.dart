import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcdonald_project/screens/navbar_screen.dart';

class HomeCardDetail extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final int index; // The index of the navigation
  final double imageHeight; // Parameter for image height
  final double imageWidth; // New parameter for image width

  const HomeCardDetail({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.index,
    required this.imageHeight, // Accept the image height
    required this.imageWidth, // Accept the image width
  });

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find();
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        controller.selectedIndex.value = index; // Set the selected index for Coupons
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Keep the border radius for rounded corners
        ),
        elevation: 5, // Keep the elevation for shadow effect
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          width: screenWidth * 0.9, // Make card width relative to screen size
          height: 250, // Keeping the same height of the card
          child: Stack(
            children: [
              // Top section with title
              Container(
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                height: 125, // Height of the top section remains the same
                padding: const EdgeInsets.all(8), // Adjusted padding for more compact layout
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 30, // Adjusted font size for the title
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              // Bottom section with subtitle
              Positioned(
                top: 125, // Positioned to fit the new card size
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  height: 125, // Height of the bottom section remains the same
                  padding: const EdgeInsets.all(8), // Adjusted padding for a compact look
                  alignment: Alignment.centerLeft,
                ),
              ),
              // Positioned image on the right
              Positioned(
                right: 16, // Fixed padding to keep the image on the right
                top: 16, // Adjusted vertical position
                child: Image.asset(
                  imagePath,
                  height: imageHeight,
                  width: imageWidth,
                ),
              ),
              // Positioned subtitle
              Positioned(
                left: 16,
                bottom: 10,
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 20, // Adjusted font size for the subtitle
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
