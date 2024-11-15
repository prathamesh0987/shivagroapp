import 'package:flutter/material.dart';
import 'package:shivagroapp/presentation/widgets/Bottom_nav.dart';
import '../../widgets/profile_header.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/out_of_stock_card.dart';
import '../../widgets/sales_stats_card.dart';
import '../../widgets/best_selling_product_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  // This method is used to update the index when the user taps the bottom navigation item
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.green),
        ),
      ), // Customize your AppBar

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display content based on selected tab
              if (_currentIndex == 0) ...[
                const ProfileHeader(userName: 'Ameya Patil'),
                const SizedBox(height: 20),
                SearchBar1(),
                const SizedBox(height: 30),
                const Text(
                  "Out of stock",
                  style: TextStyle(
                    fontSize: 26.24,
                    fontWeight: FontWeight.w700,
                    height: 1.312,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 10),
                const OutOfStockCard(
                    productName: "Delhi Rice", brandName: "Daawat"),
                const SizedBox(height: 20),
                const SalesStatsCard(totalSales: '3.5Cr', growth: '5%'),
                const SizedBox(height: 20),
                const Text(
                  'Best Selling Products',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BestSellingProductCard(
                        productName: "Wheat Flour",
                        brandName: "Ashirwaad",
                        quantity: 1987,
                        imagePath: "assets/images/ashirwad.png",
                      ),
                      BestSellingProductCard(
                          productName: "Wheat",
                          brandName: "Whole Farm",
                          quantity: 1934,
                          imagePath: 'assets/images/wheat.png'),
                      BestSellingProductCard(
                        productName: "Peanuts",
                        brandName: "Whole Farm",
                        quantity: 1876,
                        imagePath: "assets/images/peanut.png",
                      ),
                    ],
                  ),
                ),
              ],
              if (_currentIndex == 1) ...[
                const Text(
                  'Management Content',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
              if (_currentIndex == 2) ...[
                const Text(
                  'Reports Content',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
              if (_currentIndex == 3) ...[
                const Text(
                  'Account Content',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ],
          ),
        ),
      ),

      // Use the separated CustomBottomNavigationBar widget
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
