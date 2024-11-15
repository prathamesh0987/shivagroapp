import 'package:flutter/material.dart';

class OutOfStockCard extends StatelessWidget {
  final String productName;
  final String brandName;

  const OutOfStockCard(
      {Key? key, required this.productName, required this.brandName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 221, 221),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffCA7373), width: 3)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/delhi_rice.png',
            height: 60,
            width: 70,
          ), // Replace with actual image
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(brandName),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Add",
              style: TextStyle(
                color: Colors.white, // Text color
                fontFamily: 'Roboto', // Set font family
                fontSize: 14, // Font size
                fontWeight: FontWeight.w500, // Font weight
                height: 18.37 /
                    14, // Line height (line height divided by font size)
                decoration: TextDecoration.none, // Remove underline
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Color(0xff3C552D)), // Button background color
            ),
          )
        ],
      ),
    );
  }
}
