import 'package:flutter/material.dart';
import 'package:instagram/footer.dart';
import 'package:instagram/header.dart';
import 'package:instagram/stories.dart';
import 'package:instagram/user_post.dart';
import 'package:instagram/user_post_header.dart';
import 'package:instagram/your_story.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Header(), //header including instagram icon and notification and message section
            Expanded(
              child: ListView(
                children: [
                  Divider( // divider between header and stories section
                    color: Colors.black,
                    thickness: 0.1,
                    indent: 0.1,
                    endIndent: 0.1,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  YourStory(),
                                  SizedBox(height: 10,width: 10,),
                                  SizedBox(height: 100, child: Stories()), // stories section


                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.black, thickness: 0.1),
                  UserPostHeader(),
                  // UserPost(),
                  Divider(
                    color: Colors.black,
                    thickness: 0.1,
                    indent: 0.1,
                    endIndent: 0.1,
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
