import 'package:flutter/material.dart';

class SearchBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Scale font size based on screen width (you can tweak this formula for better scaling)
    double fontSize = screenWidth * 0.04; // 4% of the screen width (responsive)
    double heightFactor =
        screenHeight * 0.0022; // Based on screen height for line height

    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset('assets/icons/search-normal.png'),
        ),
        hintText: "Search by product",
        hintStyle: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.w400,
          height: heightFactor, // Responsive line height
          color: Colors.grey, // Color of the hint text (you can customize it)
          decoration: TextDecoration.none,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Image.asset('assets/icons/filter.png'),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide.none,
        ),
        fillColor: Color(0xffFFFFFF),
        filled: true,
      ),
    );
  }
}
