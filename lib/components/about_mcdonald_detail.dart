import 'package:flutter/material.dart';

class AboutMcdonaldPage extends StatelessWidget {
  const AboutMcdonaldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0), // Increase the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false, // Remove the default back button
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 0.0, top: 10.0), // Adjust padding for better spacing
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute space between the items
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),// Add spacing between the button and title
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          'McDonald’s - About Us',
                          textAlign: TextAlign.center, // Center the text within the available space
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8), // Add spacing between the title and the next row
                Row(
                  children: [
                    Image.asset(
                      'assets/images/mcdonald_logo.png', // Replace with your McDonald's logo image
                      width: 50,
                      height: 50,
                    ),
                    const Spacer(), // This will push the red box to the right edge
                    Container(
                      height: 60, // Adjust the height to extend to the image below
                      constraints: const BoxConstraints(minWidth: 60), // Ensure minimum width of the red box
                      decoration: const BoxDecoration(
                        color: Color(0xFFDC143C),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(1), // Optional: rounded top-left corner
                          bottomLeft: Radius.circular(1), // Optional: rounded bottom-left corner
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.amber, // Icon color to match the example
                        ),
                        onPressed: () {
                          // Add your menu action here if needed
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/about_mcdonald.png', // Replace with the actual image path
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About McDonald\'s',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'The legend of McDonald\'s began in 1948 when Dick and Mac McDonald opened a drive-thru restaurant in San Bernardino, California. They built up quite a reputation for fast service and great tasting hamburgers and began the technical innovations to revolutionize the food service industry. Established in Desplaines, Illinois, Mr. Ray A. Kroc opened the first franchised McDonald\'s hamburger Restaurant. He took the technical innovations started by the brother and formulated the nationwide operating which led to the rapid expansion. Currently, McDonald\'s is one of the Top 10 most valuable brands and is the leading global food service retailer with more than 36,000 local restaurants serving 69 million people in more than 100 countries each day.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 40),
                  Text(
                    'McDonald Thailand first restaurant was opened at Amarin Plaza in 1985 as the 35th country in the world serving the great taste of hamburger. McDonald Thailand currently has 245 restaurants nationwide (As of June 2019) offering a range of convenience services to match with customers lifestyles. The service includes Dine-In, Drive-Thru, Dessert Center, McCafe, free Wi-Fi and eBook. There is also a 24-hour McDelivery Service at Call Center 1711 and some restaurants also offer 24-hour service to meet with customers demand',
                    style: TextStyle(
                      fontSize: 16,
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
