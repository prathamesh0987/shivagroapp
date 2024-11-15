import 'package:flutter/material.dart';

class SalesStatsCard extends StatelessWidget {
  final String totalSales;
  final String growth;

  const SalesStatsCard(
      {Key? key, required this.totalSales, required this.growth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Real-time Sales Stats',
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
          ),
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildStatCard('Total Sales', '3.5Cr', '/year'),
              const SizedBox(width: 18),
              _buildStatCard('Sales Growth', '5%', ''),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, String suffix) {
    return Container(
      width: 164,
      padding: const EdgeInsets.fromLTRB(20, 20, 10, 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(2, 5),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF060527),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style: const TextStyle(
                    color: Color(0xFF3C552D),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                TextSpan(
                  text: suffix,
                  style: const TextStyle(
                    color: Color(0xFF8D8DA6),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
