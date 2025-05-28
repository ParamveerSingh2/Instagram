import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourStory extends StatelessWidget{
  const YourStory ({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Stack(
            alignment: Alignment.center,
            children: [

              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/grey_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -8, // Position at the bottom
                right: -8, // Position at the right
                child: IconButton(
                  icon: const Icon(CupertinoIcons.plus_circle_fill),
                  color: Colors.blue,
                  onPressed: () {
                    // ...
                  },
                ),
                ),

            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text('Your Story', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ],
    );
  }
}
