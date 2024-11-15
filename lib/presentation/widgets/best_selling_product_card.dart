import 'package:flutter/material.dart';

class BestSellingProductCard extends StatelessWidget {
  final String productName;
  final String brandName;
  final int quantity;
  final String imagePath; // Add imagePath as a parameter

  const BestSellingProductCard({
    Key? key,
    required this.productName,
    required this.brandName,
    required this.quantity,
    required this.imagePath, // Initialize imagePath in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Adjust elevation to control shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        padding: EdgeInsets.all(10), // Padding inside the card
        width: 120,
        height: 180,
        child: Column(
          children: [
            Image.asset(
              imagePath, // Use the imagePath passed as a parameter
              width: 60,
              height: 80, // Fixed height to maintain image aspect ratio
              fit: BoxFit.cover, // Make sure the image fits nicely
            ),
            SizedBox(height: 10),
            Text(
              productName,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign:
                  TextAlign.center, // Center the text for better appearance
            ),
            SizedBox(height: 5),
            Text(
              brandName,
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              '$quantity items',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
