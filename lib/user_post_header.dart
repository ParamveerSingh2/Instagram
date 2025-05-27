import 'package:flutter/material.dart';

class UserPostHeader extends StatelessWidget {
  const UserPostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/grey_icon.jpeg'),
              ),
            ),
            Text(
              'username',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            IconButton(
              icon: Image.asset(
                'assets/images/menu_icon.png',
                height: 25,
                width: 25,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
