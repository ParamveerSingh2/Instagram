import 'package:flutter/material.dart';
import 'package:instagram/app_assets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Image.asset(
            AppAssets().icHome,
            height: 25,
            width: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            AppAssets().icSearch,
            height: 25,
            width: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            AppAssets().icUpload,
            height: 25,
            width: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            AppAssets().icReels,
            height: 25,
            width: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            AppAssets().icUser,
            height: 25,
            width: 25,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
