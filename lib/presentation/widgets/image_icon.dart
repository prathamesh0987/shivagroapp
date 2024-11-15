import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget _buildSvgIcon(
    String assetPath, double width, double height, bool isSelected) {
  return ColorFiltered(
    colorFilter: ColorFilter.mode(
      isSelected
          ? const Color(0xff3C552D)
          : Colors.grey, // Apply color if selected
      BlendMode.srcIn,
    ),
    child: SvgPicture.asset(
      assetPath,
      width: width,
      height: height,
    ),
  );
}
