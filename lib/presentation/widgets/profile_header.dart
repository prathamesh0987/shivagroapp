import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String userName;
  final bool hasNotification; // Boolean to control visibility of the red dot

  const ProfileHeader({
    Key? key,
    required this.userName,
    this.hasNotification = false, // Default to false, meaning no notification
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile_image.png'),
              radius: 36,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good Morning", style: TextStyle(color: Colors.grey)),
                Text(userName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ],
        ),
        Stack(
          clipBehavior: Clip.none, // Allow overflow for the red dot
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.all(20),
              child: Image.asset(
                'assets/icons/notification.png',
                color: Colors.black,
                width: 24, // Set the size of the notification icon
                height: 24,
              ),
            ),
            if (!hasNotification) // Show red dot only if there's a notification
              Positioned(
                right: 22,
                bottom: 34,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.red, // Red color for the dot
                    shape: BoxShape.circle, // Circle shape for the dot
                  ),
                ),
              ),
          ],
        )
      ],
    );
  }
}
