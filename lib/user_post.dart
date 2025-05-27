import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
      scrollDirection: Axis.vertical,

      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Column(

          children: [

            Image(image: AssetImage('assets/images/grey_image.png'),height: screenWidth,width: screenWidth,),
          ],

        ); },
    );
  }
}
