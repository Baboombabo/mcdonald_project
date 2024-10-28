import 'package:flutter/material.dart';

class CouponBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;  // New flag to determine selected state

  const CouponBtn({super.key, 
    required this.text,
    required this.onPressed,
    this.isSelected = false,  // Default to not selected
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.amber : Colors.white,  // Yellow if selected
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: isSelected ? Colors.amber : Colors.grey,  // Border change
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.black,  // Text remains black
            fontWeight: isSelected ? FontWeight.normal : FontWeight.normal,
            fontSize: 16,   // Bold when selected
          ),
        ),
      ),
    );
  }
}
