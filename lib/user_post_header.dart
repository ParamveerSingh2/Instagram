import 'package:flutter/material.dart';
import 'package:instagram/app_assets.dart';
List<String> usernameList = ['anjali', 'leesha', 'paramveer','amaan'];

class UserPostHeader extends StatelessWidget {
  const UserPostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: usernameList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 43,
                        height: 43,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.yellow,
                              Colors.pink,
                              Colors.purple,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          image: DecorationImage(
                            image: AssetImage(
                              AppAssets().icUserProfileJpg,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  usernameList[index],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(
                  icon: Image.asset(
                   AppAssets().icMenu,
                    height: 25,
                    width: 25,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                Image(
                  image: AssetImage(AppAssets().icGrey),
                  height: screenWidth,
                  width: screenWidth,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red, size: 28),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                   AppAssets().icComments,
                    height: 22,
                    width: 22,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    AppAssets().icSend,
                    height: 22,
                    width: 22,
                  ),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Image.asset(
                    AppAssets().icSave,
                    height: 22,
                    width: 22,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 4,
                    bottom: 8,
                  ),
                  child: Text(
                    '10547 Likes',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 12, bottom: 8),
                  child: Text.rich(
                    TextSpan(
                      text: '@username  ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),

                      children: [
                        TextSpan(
                          text: 'Lorem ipsum dolor sit amet, consectetur',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,

                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
