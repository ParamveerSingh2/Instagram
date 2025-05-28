import 'package:flutter/material.dart';
import 'package:instagram/app_assets.dart';

List<String> usernameList = ['anjali', 'leesha', 'paramveer','amaan'];


class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: usernameList.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                          Colors.purple,
                          Colors.red,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets().icGrey),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 8),
            Text(
              usernameList[index],
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ],
        );
      },
    );
  }
}
