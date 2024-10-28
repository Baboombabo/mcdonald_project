import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ContactUsPage()));
}

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false, // Remove the default back button
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          'McDonald’s - Contact Us',
                          textAlign: TextAlign.center,
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
                const SizedBox(height: 8),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/mcdonald_logo.png', // Replace with your McDonald's logo image
                      width: 50,
                      height: 50,
                    ),
                    const Spacer(),
                    Container(
                      height: 60,
                      constraints: const BoxConstraints(minWidth: 60),
                      decoration: const BoxDecoration(
                        color: Color(0xFFDC143C),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(1),
                          bottomLeft: Radius.circular(1),
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.amber,
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
              'assets/images/contact_us.png', // Replace with actual image path
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'McThai Co., Ltd.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFDC143C),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'McDonald\'s Thailand',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.grey),
                      SizedBox(width: 20),
                      Text('1711', style: TextStyle(fontSize: 16, color: Colors.black,)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.grey),
                      SizedBox(width: 20),
                      Text('Monday - Friday at 09.00 u. - 18.00 u.',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.grey),
                      SizedBox(width: 20),
                      Text('mcdappsupport@th.mcd.com',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          '97/11 Big C Rajdamri Building, Office Room 1, 5th Floor, Rajdamri Road, Lumpini, Pathumwan, Bangkok 10330 Thailand',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
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

