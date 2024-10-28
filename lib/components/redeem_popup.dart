import 'package:flutter/material.dart';

class RedeemPopup {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              const SizedBox(height: 8),
              // Redeem Section
              const Text(
                'Redeem',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              // Framed "Scan in restaurant" section
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), // Border color
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                ),
                child: ListTile(
                  leading: const Icon(Icons.qr_code, color: Colors.amber),
                  title: const Text(
                    'Scan in restaurant',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black,size: 18,),
                  onTap: () {
                    // Handle tap event here
                  },
                ),
              ),
              const SizedBox(height: 40,)
            ],
          ),
        );
      },
    );
  }
}
