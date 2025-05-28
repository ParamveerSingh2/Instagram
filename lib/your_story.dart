import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_assets.dart';

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
                    image: AssetImage(AppAssets().icGrey),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -8, // Position at the bottom
                right: -8, // Position at the right
                child: Container(decoration: BoxDecoration(border: Border.all(color: Colors.transparent)),
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.plus_circle_fill),
                    color: Colors.blue,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 9),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(99)),

                    ),

                    onPressed: () {
                      // ...
                    },

                  ),
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
