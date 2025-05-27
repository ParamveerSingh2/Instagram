import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/images/home_icon.png',
                  height: 25,
                  width: 25,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/search_icon.png',
                  height: 25,
                  width: 25,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/save_icon.png',
                  height: 25,
                  width: 25,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/reels_icon.png',
                  height: 25,
                  width: 25,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/user_icon.png',
                  height: 25,
                  width: 25,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
